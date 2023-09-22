#使用bnlearn：https://www.bnlearn.com/bnrepository/中的贝叶斯网络随机生成数据集
# 加载 bnlearn 包
library(bnlearn)
library(Rgraphviz)
# 读取 BIF 文件（假设您的贝叶斯网络存储在一个 .bif 文件中，例如 network.bif）
load("D:/network/asia.rda")
# 使用 graphviz.plot 函数绘制网络结构
graphviz.plot(bn)
data = rbn(bn,10000)
head(data)

#learning network
net1<- iamb(data, alpha = 0.01)
plot(net1)
