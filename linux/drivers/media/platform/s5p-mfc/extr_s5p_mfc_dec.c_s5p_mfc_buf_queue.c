
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; int drv_priv; } ;
struct vb2_buffer {size_t index; struct vb2_queue* vb2_queue; } ;
struct s5p_mfc_dev {int mfc_ops; int irqlock; } ;
struct s5p_mfc_ctx {int dst_queue_cnt; int dst_queue; int dec_dst_flag; struct s5p_mfc_buf* dst_bufs; int src_queue_cnt; int src_queue; struct s5p_mfc_buf* src_bufs; struct s5p_mfc_dev* dev; } ;
struct s5p_mfc_buf {int list; int flags; } ;


 int MFC_BUF_FLAG_USED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (int ) ;
 int list_add_tail (int *,int *) ;
 int mfc_err (char*,scalar_t__) ;
 scalar_t__ s5p_mfc_ctx_ready (struct s5p_mfc_ctx*) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 int set_bit (size_t,int *) ;
 int set_work_bit_irqsave (struct s5p_mfc_ctx*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_run ;

__attribute__((used)) static void s5p_mfc_buf_queue(struct vb2_buffer *vb)
{
 struct vb2_queue *vq = vb->vb2_queue;
 struct s5p_mfc_ctx *ctx = fh_to_ctx(vq->drv_priv);
 struct s5p_mfc_dev *dev = ctx->dev;
 unsigned long flags;
 struct s5p_mfc_buf *mfc_buf;

 if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
  mfc_buf = &ctx->src_bufs[vb->index];
  mfc_buf->flags &= ~MFC_BUF_FLAG_USED;
  spin_lock_irqsave(&dev->irqlock, flags);
  list_add_tail(&mfc_buf->list, &ctx->src_queue);
  ctx->src_queue_cnt++;
  spin_unlock_irqrestore(&dev->irqlock, flags);
 } else if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  mfc_buf = &ctx->dst_bufs[vb->index];
  mfc_buf->flags &= ~MFC_BUF_FLAG_USED;

  spin_lock_irqsave(&dev->irqlock, flags);
  set_bit(vb->index, &ctx->dec_dst_flag);
  list_add_tail(&mfc_buf->list, &ctx->dst_queue);
  ctx->dst_queue_cnt++;
  spin_unlock_irqrestore(&dev->irqlock, flags);
 } else {
  mfc_err("Unsupported buffer type (%d)\n", vq->type);
 }
 if (s5p_mfc_ctx_ready(ctx))
  set_work_bit_irqsave(ctx);
 s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
}
