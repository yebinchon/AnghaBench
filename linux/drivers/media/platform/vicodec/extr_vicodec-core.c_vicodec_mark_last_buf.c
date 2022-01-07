
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_ctx; } ;
struct vicodec_ctx {int is_draining; int has_stopped; int next_is_last; int lock; TYPE_1__ fh; scalar_t__ last_src_buf; } ;
struct vb2_v4l2_buffer {int vb2_buf; int flags; } ;


 int EBUSY ;
 int V4L2_BUF_FLAG_LAST ;
 int VB2_BUF_STATE_DONE ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int v4l2_event_queue_fh (TYPE_1__*,int *) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 scalar_t__ v4l2_m2m_last_src_buf (int ) ;
 int vb2_buffer_done (int *,int ) ;
 int vicodec_eos_event ;

__attribute__((used)) static int vicodec_mark_last_buf(struct vicodec_ctx *ctx)
{
 struct vb2_v4l2_buffer *next_dst_buf;
 int ret = 0;

 spin_lock(ctx->lock);
 if (ctx->is_draining) {
  ret = -EBUSY;
  goto unlock;
 }
 if (ctx->has_stopped)
  goto unlock;

 ctx->last_src_buf = v4l2_m2m_last_src_buf(ctx->fh.m2m_ctx);
 ctx->is_draining = 1;
 if (ctx->last_src_buf)
  goto unlock;

 next_dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
 if (!next_dst_buf) {
  ctx->next_is_last = 1;
  goto unlock;
 }

 next_dst_buf->flags |= V4L2_BUF_FLAG_LAST;
 vb2_buffer_done(&next_dst_buf->vb2_buf, VB2_BUF_STATE_DONE);
 ctx->is_draining = 0;
 ctx->has_stopped = 1;
 v4l2_event_queue_fh(&ctx->fh, &vicodec_eos_event);

unlock:
 spin_unlock(ctx->lock);
 return ret;
}
