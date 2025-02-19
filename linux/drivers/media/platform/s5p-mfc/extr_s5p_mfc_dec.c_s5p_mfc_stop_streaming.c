
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; int drv_priv; } ;
struct s5p_mfc_dev {scalar_t__ curr_ctx; int irqlock; int mfc_ops; scalar_t__ hw_lock; } ;
struct s5p_mfc_ctx {scalar_t__ state; scalar_t__ num; int dpb_flush_flag; scalar_t__ src_queue_cnt; int src_queue; int vq_src; scalar_t__ dec_dst_flag; scalar_t__ dst_queue_cnt; int dst_queue; int vq_dst; struct s5p_mfc_dev* dev; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 scalar_t__ MFCINST_ABORT ;
 scalar_t__ MFCINST_FINISHING ;
 scalar_t__ MFCINST_FLUSH ;
 scalar_t__ MFCINST_RUNNING ;
 int S5P_MFC_R2H_CMD_DPB_FLUSH_RET ;
 int S5P_MFC_R2H_CMD_FRAME_DONE_RET ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (int ) ;
 int mfc_err (char*) ;
 int s5p_mfc_cleanup_queue (int *,int *) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_wait_for_done_ctx (struct s5p_mfc_ctx*,int ,int ) ;
 int set_work_bit_irqsave (struct s5p_mfc_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_run ;

__attribute__((used)) static void s5p_mfc_stop_streaming(struct vb2_queue *q)
{
 unsigned long flags;
 struct s5p_mfc_ctx *ctx = fh_to_ctx(q->drv_priv);
 struct s5p_mfc_dev *dev = ctx->dev;
 int aborted = 0;

 spin_lock_irqsave(&dev->irqlock, flags);
 if ((ctx->state == MFCINST_FINISHING ||
  ctx->state == MFCINST_RUNNING) &&
  dev->curr_ctx == ctx->num && dev->hw_lock) {
  ctx->state = MFCINST_ABORT;
  spin_unlock_irqrestore(&dev->irqlock, flags);
  s5p_mfc_wait_for_done_ctx(ctx,
     S5P_MFC_R2H_CMD_FRAME_DONE_RET, 0);
  aborted = 1;
  spin_lock_irqsave(&dev->irqlock, flags);
 }
 if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  s5p_mfc_cleanup_queue(&ctx->dst_queue, &ctx->vq_dst);
  INIT_LIST_HEAD(&ctx->dst_queue);
  ctx->dst_queue_cnt = 0;
  ctx->dpb_flush_flag = 1;
  ctx->dec_dst_flag = 0;
  if (IS_MFCV6_PLUS(dev) && (ctx->state == MFCINST_RUNNING)) {
   ctx->state = MFCINST_FLUSH;
   set_work_bit_irqsave(ctx);
   s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
   spin_unlock_irqrestore(&dev->irqlock, flags);
   if (s5p_mfc_wait_for_done_ctx(ctx,
    S5P_MFC_R2H_CMD_DPB_FLUSH_RET, 0))
    mfc_err("Err flushing buffers\n");
   spin_lock_irqsave(&dev->irqlock, flags);
  }
 } else if (q->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  s5p_mfc_cleanup_queue(&ctx->src_queue, &ctx->vq_src);
  INIT_LIST_HEAD(&ctx->src_queue);
  ctx->src_queue_cnt = 0;
 }
 if (aborted)
  ctx->state = MFCINST_RUNNING;
 spin_unlock_irqrestore(&dev->irqlock, flags);
}
