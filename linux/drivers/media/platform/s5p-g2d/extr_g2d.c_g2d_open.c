
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct g2d_dev {int v4l2_dev; int mutex; int m2m_dev; } ;
struct TYPE_3__ {int * ctrl_handler; int m2m_ctx; } ;
struct g2d_ctx {int ctrl_handler; TYPE_1__ fh; void* out; void* in; struct g2d_dev* dev; } ;
struct file {TYPE_1__* private_data; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* def_frame ;
 int g2d_setup_ctrls (struct g2d_ctx*) ;
 int kfree (struct g2d_ctx*) ;
 struct g2d_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int v4l2_ctrl_handler_setup (int *) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_info (int *,char*) ;
 int v4l2_m2m_ctx_init (int ,struct g2d_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct g2d_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int g2d_open(struct file *file)
{
 struct g2d_dev *dev = video_drvdata(file);
 struct g2d_ctx *ctx = ((void*)0);
 int ret = 0;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 ctx->dev = dev;

 ctx->in = def_frame;
 ctx->out = def_frame;

 if (mutex_lock_interruptible(&dev->mutex)) {
  kfree(ctx);
  return -ERESTARTSYS;
 }
 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, ctx, &queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  mutex_unlock(&dev->mutex);
  kfree(ctx);
  return ret;
 }
 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 g2d_setup_ctrls(ctx);


 v4l2_ctrl_handler_setup(&ctx->ctrl_handler);

 ctx->fh.ctrl_handler = &ctx->ctrl_handler;
 mutex_unlock(&dev->mutex);

 v4l2_info(&dev->v4l2_dev, "instance opened\n");
 return 0;
}
