.class Lcn/com/smartdevices/bracelet/weibo/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/weibo/sdk/net/RequestListener;


# instance fields
.field final synthetic a:Lcn/com/smartdevices/bracelet/weibo/w;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/weibo/w;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/weibo/x;->a:Lcn/com/smartdevices/bracelet/weibo/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/smartdevices/bracelet/weibo/y;

    invoke-direct {v1, p0, p1}, Lcn/com/smartdevices/bracelet/weibo/y;-><init>(Lcn/com/smartdevices/bracelet/weibo/x;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3

    const-string v0, "WeiboHealthManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh Token exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weibo/x;->a:Lcn/com/smartdevices/bracelet/weibo/w;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/weibo/w;->b:Lcn/com/smartdevices/bracelet/weibo/v;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/weibo/x;->a:Lcn/com/smartdevices/bracelet/weibo/w;

    iget-object v1, v1, Lcn/com/smartdevices/bracelet/weibo/w;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/weibo/v;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/weibo/x;->a:Lcn/com/smartdevices/bracelet/weibo/w;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/weibo/w;->a:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/weibo/BindHealthActivity;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
