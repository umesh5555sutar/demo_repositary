# Topic 7 Example_1
rm(list=ls())
x=c(368,384,361,347,403,529,703,396,473,509,512,503,472,429,387,
    376,412,345,297,633)
y=c(31,33,37,39,43,61,68,42,41,49,31,29,38,41,40,38,42,45,32,50)
population.mean_x=mean(x);population.mean_x
n=5;N=length(y)
sample_=sample(1:N,n,replace=F)
sample_y=y[sample_]
sample_x=x[sample_]
# To find yt_hat under Ratio mathod
R=mean(sample_y)/mean(sample_x)
Ybar_R=R*population.mean_x
yt_hat=N*Ybar_R
cat("Estimate of total amount of raw material consumed 
    by 20 jute mills under Ratio method is \n", yt_hat)
# To find yt_hat under SRSWOR mathod
yt_hat_SRS=N*mean(sample_y)
cat("Estimate of total amount of raw material consumed 
    by 20 jute mills under SRSWOR method is \n", yt_hat_SRS)
cbind(yt_hat,yt_hat_SRS)
# To find estimated MSE of yt_hat under Ratio method
Est_MSE_yt_hat=N^2*(1/n-1/N)*(var(sample_y)+var(sample_x)*R^2
                                -2*R*cov(sample_x,sample_y))
# To find estimated MSE of yt_hat under SRSWOR method
Est_MSE_yt_hat_SRS=N^2*(1/n-1/N)*var(sample_y)
cbind(yt_hat,Est_MSE_yt_hat,yt_hat_SRS,Est_MSE_yt_hat_SRS)

# Example_2
x=c(76,138,67,29,381,23,37,120,61,387,93,172,78,66,60,46,2,507,179,121,50,44,77,64,64,56,40,40,38,136)
y=c(80,143,67,50,464,48,63,115,69,459,104,183,106,86,57,65,50,634,260,113,64,58,89,63,77,142,60,64,52,139)
N=length(x);n=12;yt_hat_SRS=0;yt_hat_Ratio=0;
f
for (i in 1:200)
{
sample_=sample(1:N,n,F)
sample_x=x[sample_]
sample_y=y[sample_]
yt_hat_SRS[i]=N*mean(sample_y)
yt_hat_Ratio[i]=N*mean(sample_y)/mean(sample_x)*mean(x)
}
par(mfrow=c(1,1))
boxplot(yt_hat_SRS,yt_hat_Ratio)



