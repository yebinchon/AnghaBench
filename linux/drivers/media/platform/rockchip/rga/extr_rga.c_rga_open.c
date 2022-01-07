
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rockchip_rga {int mutex; int m2m_dev; } ;
struct TYPE_3__ {int * ctrl_handler; int m2m_ctx; } ;
struct rga_ctx {int ctrl_handler; TYPE_1__ fh; void* out; void* in; struct rockchip_rga* rga; } ;
struct file {TYPE_1__* private_data; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* def_frame ;
 int kfree (struct rga_ctx*) ;
 struct rga_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int rga_setup_ctrls (struct rga_ctx*) ;
 int v4l2_ctrl_handler_setup (int *) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct rga_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct rockchip_rga* video_drvdata (struct file*) ;

__attribute__((used)) static int rga_open(struct file *file)
{
 struct rockchip_rga *rga = video_drvdata(file);
 struct rga_ctx *ctx = ((void*)0);
 int ret = 0;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 ctx->rga = rga;

 ctx->in = def_frame;
 ctx->out = def_frame;

 if (mutex_lock_interruptible(&rga->mutex)) {
  kfree(ctx);
  return -ERESTARTSYS;
 }
 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(rga->m2m_dev, ctx, &queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  mutex_unlock(&rga->mutex);
  kfree(ctx);
  return ret;
 }
 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 rga_setup_ctrls(ctx);


 v4l2_ctrl_handler_setup(&ctx->ctrl_handler);

 ctx->fh.ctrl_handler = &ctx->ctrl_handler;
 mutex_unlock(&rga->mutex);

 return 0;
}
