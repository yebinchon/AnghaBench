
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int private_data; } ;
struct fdp1_dev {int dev; int dev_mutex; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct fdp1_ctx {TYPE_1__ fh; int hdl; } ;


 int dprintk (struct fdp1_dev*,char*,struct fdp1_ctx*) ;
 struct fdp1_ctx* fh_to_ctx (int ) ;
 int kfree (struct fdp1_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct fdp1_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fdp1_release(struct file *file)
{
 struct fdp1_dev *fdp1 = video_drvdata(file);
 struct fdp1_ctx *ctx = fh_to_ctx(file->private_data);

 dprintk(fdp1, "Releasing instance %p\n", ctx);

 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_ctrl_handler_free(&ctx->hdl);
 mutex_lock(&fdp1->dev_mutex);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 mutex_unlock(&fdp1->dev_mutex);
 kfree(ctx);

 pm_runtime_put(fdp1->dev);

 return 0;
}
