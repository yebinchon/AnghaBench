
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int type; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct jpu_ctx {TYPE_2__* jpu; TYPE_1__ fh; } ;
struct TYPE_4__ {int lock; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VB2_BUF_STATE_ERROR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct jpu_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void jpu_stop_streaming(struct vb2_queue *vq)
{
 struct jpu_ctx *ctx = vb2_get_drv_priv(vq);
 struct vb2_v4l2_buffer *vb;
 unsigned long flags;

 for (;;) {
  if (V4L2_TYPE_IS_OUTPUT(vq->type))
   vb = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vb = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
  if (vb == ((void*)0))
   return;
  spin_lock_irqsave(&ctx->jpu->lock, flags);
  v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
  spin_unlock_irqrestore(&ctx->jpu->lock, flags);
 }
}
