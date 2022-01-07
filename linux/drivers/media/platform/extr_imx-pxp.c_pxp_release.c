
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pxp_dev {int num_inst; int dev_mutex; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct pxp_ctx {TYPE_1__ fh; int hdl; } ;
struct file {int dummy; } ;


 int atomic_dec (int *) ;
 int dprintk (struct pxp_dev*,char*,struct pxp_ctx*) ;
 struct pxp_ctx* file2ctx (struct file*) ;
 int kfree (struct pxp_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct pxp_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int pxp_release(struct file *file)
{
 struct pxp_dev *dev = video_drvdata(file);
 struct pxp_ctx *ctx = file2ctx(file);

 dprintk(dev, "Releasing instance %p\n", ctx);

 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_ctrl_handler_free(&ctx->hdl);
 mutex_lock(&dev->dev_mutex);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 mutex_unlock(&dev->dev_mutex);
 kfree(ctx);

 atomic_dec(&dev->num_inst);

 return 0;
}
