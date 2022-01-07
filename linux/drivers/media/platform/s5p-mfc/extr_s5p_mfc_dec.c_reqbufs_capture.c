
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ count; } ;
struct s5p_mfc_dev {scalar_t__ dst_bufs_cnt; scalar_t__ capture_state; scalar_t__ total_dpb_count; int mfc_ops; int vq_dst; } ;
struct s5p_mfc_ctx {scalar_t__ dst_bufs_cnt; scalar_t__ capture_state; scalar_t__ total_dpb_count; int mfc_ops; int vq_dst; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ QUEUE_BUFS_MMAPED ;
 scalar_t__ QUEUE_BUFS_REQUESTED ;
 scalar_t__ QUEUE_FREE ;
 int S5P_MFC_R2H_CMD_INIT_BUFFERS_RET ;
 int WARN_ON (int) ;
 int alloc_codec_buffers ;
 int mfc_debug (int,char*,...) ;
 int mfc_err (char*) ;
 int release_codec_buffers ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_clock_on () ;
 scalar_t__ s5p_mfc_ctx_ready (struct s5p_mfc_dev*) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 int s5p_mfc_wait_for_done_ctx (struct s5p_mfc_dev*,int ,int ) ;
 int set_work_bit_irqsave (struct s5p_mfc_dev*) ;
 int try_run ;
 int vb2_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int reqbufs_capture(struct s5p_mfc_dev *dev, struct s5p_mfc_ctx *ctx,
    struct v4l2_requestbuffers *reqbufs)
{
 int ret = 0;

 s5p_mfc_clock_on();

 if (reqbufs->count == 0) {
  mfc_debug(2, "Freeing buffers\n");
  ret = vb2_reqbufs(&ctx->vq_dst, reqbufs);
  if (ret)
   goto out;
  s5p_mfc_hw_call(dev->mfc_ops, release_codec_buffers, ctx);
  ctx->dst_bufs_cnt = 0;
 } else if (ctx->capture_state == QUEUE_FREE) {
  WARN_ON(ctx->dst_bufs_cnt != 0);
  mfc_debug(2, "Allocating %d buffers for CAPTURE queue\n",
    reqbufs->count);
  ret = vb2_reqbufs(&ctx->vq_dst, reqbufs);
  if (ret)
   goto out;

  ctx->capture_state = QUEUE_BUFS_REQUESTED;
  ctx->total_dpb_count = reqbufs->count;

  ret = s5p_mfc_hw_call(dev->mfc_ops, alloc_codec_buffers, ctx);
  if (ret) {
   mfc_err("Failed to allocate decoding buffers\n");
   reqbufs->count = 0;
   vb2_reqbufs(&ctx->vq_dst, reqbufs);
   ret = -ENOMEM;
   ctx->capture_state = QUEUE_FREE;
   goto out;
  }

  WARN_ON(ctx->dst_bufs_cnt != ctx->total_dpb_count);
  ctx->capture_state = QUEUE_BUFS_MMAPED;

  if (s5p_mfc_ctx_ready(ctx))
   set_work_bit_irqsave(ctx);
  s5p_mfc_hw_call(dev->mfc_ops, try_run, dev);
  s5p_mfc_wait_for_done_ctx(ctx, S5P_MFC_R2H_CMD_INIT_BUFFERS_RET,
       0);
 } else {
  mfc_err("Buffers have already been requested\n");
  ret = -EINVAL;
 }
out:
 s5p_mfc_clock_off();
 if (ret)
  mfc_err("Failed allocating buffers for CAPTURE queue\n");
 return ret;
}
