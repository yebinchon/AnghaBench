
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int drv_priv; } ;
struct s5p_mfc_dev {int mfc_ops; } ;
struct s5p_mfc_ctx {scalar_t__ state; int ctrl_handler; struct s5p_mfc_dev* dev; } ;


 scalar_t__ MFCINST_FINISHED ;
 scalar_t__ MFCINST_FINISHING ;
 scalar_t__ MFCINST_RUNNING ;
 struct s5p_mfc_ctx* fh_to_ctx (int ) ;
 scalar_t__ s5p_mfc_ctx_ready (struct s5p_mfc_ctx*) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 int set_work_bit_irqsave (struct s5p_mfc_ctx*) ;
 int try_run ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int s5p_mfc_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(q->drv_priv);
 struct s5p_mfc_dev *dev = ctx->dev;

 v4l2_ctrl_handler_setup(&ctx->ctrl_handler);
 if (ctx->state == MFCINST_FINISHING ||
  ctx->state == MFCINST_FINISHED)
  ctx->state = MFCINST_RUNNING;

 if (s5p_mfc_ctx_ready(ctx))
  set_work_bit_irqsave(ctx);
 s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
 return 0;
}
