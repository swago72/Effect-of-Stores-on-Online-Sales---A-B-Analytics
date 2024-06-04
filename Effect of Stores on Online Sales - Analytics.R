df = read_excel("C:\\Users\\raksh\\OneDrive\\Desktop\\Sem 3\\Causal AB\\HW\\HW 4\\DataFInal(1).xlsx", sheet = 'Raw Data')


####ATE ONLY TREATED CUSTOMERS

yt_pre.t=df$PreOnlineRev[df$Treat==1] #Y (pre) Treatment group
yt_post.t=df$PostOnlineRev[df$Treat==1] #Y (post) Treatment group

ate_online_rev_treatment= mean(yt_post)-mean(yt_pre); ate_online_rev

t.test(yt_post.t,yt_pre.t,paired = T) #doing a paired t test
#p value equals 2.2e-16

#There is a difference in mean in the pre and post online sales revenue
#for the treatment group and it is significant as p <0.05


####DIFFERENCE-IN-MEANS ATE

yt_post.c=df$PostOnlineRev[df$Treat==0] #Y (post) Control group

ate_online_rev_post= mean(yt_post.t)-mean(yt_post.c); ate_online_rev_post

t.test(yt_post.t,yt_post.c) #doing a t test
#p value equals 2.2e-16 

#There is a difference in mean in the post treatment and post control 
#online sales revenue and it is significant as p <0.05
