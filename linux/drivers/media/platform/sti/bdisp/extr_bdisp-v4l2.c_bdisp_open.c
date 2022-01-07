
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file {TYPE_2__* private_data; } ;
struct TYPE_6__ {int refcnt; int m2m_dev; int vdev; } ;
struct bdisp_dev {int lock; int dev; int state; TYPE_1__ m2m; } ;
struct TYPE_7__ {int m2m_ctx; int * ctrl_handler; } ;
struct bdisp_ctx {TYPE_2__ fh; void* dst; void* src; int ctrl_handler; struct bdisp_dev* bdisp_dev; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ST_M2M_OPEN ;
 int bdisp_ctrls_create (struct bdisp_ctx*) ;
 int bdisp_ctrls_delete (struct bdisp_ctx*) ;
 void* bdisp_dflt_fmt ;
 scalar_t__ bdisp_hw_alloc_nodes (struct bdisp_ctx*) ;
 int bdisp_hw_free_nodes (struct bdisp_ctx*) ;
 int dev_dbg (int ,char*,struct bdisp_ctx*) ;
 int dev_err (int ,char*) ;
 int kfree (struct bdisp_ctx*) ;
 struct bdisp_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int set_bit (int ,int *) ;
 int v4l2_fh_add (TYPE_2__*) ;
 int v4l2_fh_del (TYPE_2__*) ;
 int v4l2_fh_exit (TYPE_2__*) ;
 int v4l2_fh_init (TYPE_2__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct bdisp_ctx*,int ) ;
 struct bdisp_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int bdisp_open(struct file *file)
{
 struct bdisp_dev *bdisp = video_drvdata(file);
 struct bdisp_ctx *ctx = ((void*)0);
 int ret;

 if (mutex_lock_interruptible(&bdisp->lock))
  return -ERESTARTSYS;


 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  ret = -ENOMEM;
  goto unlock;
 }
 ctx->bdisp_dev = bdisp;

 if (bdisp_hw_alloc_nodes(ctx)) {
  dev_err(bdisp->dev, "no memory for nodes\n");
  ret = -ENOMEM;
  goto mem_ctx;
 }

 v4l2_fh_init(&ctx->fh, bdisp->m2m.vdev);

 ret = bdisp_ctrls_create(ctx);
 if (ret) {
  dev_err(bdisp->dev, "Failed to create control\n");
  goto error_fh;
 }


 ctx->fh.ctrl_handler = &ctx->ctrl_handler;
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);


 ctx->src = bdisp_dflt_fmt;
 ctx->dst = bdisp_dflt_fmt;


 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(bdisp->m2m.m2m_dev, ctx,
         queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  dev_err(bdisp->dev, "Failed to initialize m2m context\n");
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto error_ctrls;
 }

 bdisp->m2m.refcnt++;
 set_bit(ST_M2M_OPEN, &bdisp->state);

 dev_dbg(bdisp->dev, "driver opened, ctx = 0x%p\n", ctx);

 mutex_unlock(&bdisp->lock);

 return 0;

error_ctrls:
 bdisp_ctrls_delete(ctx);
 v4l2_fh_del(&ctx->fh);
error_fh:
 v4l2_fh_exit(&ctx->fh);
 bdisp_hw_free_nodes(ctx);
mem_ctx:
 kfree(ctx);
unlock:
 mutex_unlock(&bdisp->lock);

 return ret;
}
