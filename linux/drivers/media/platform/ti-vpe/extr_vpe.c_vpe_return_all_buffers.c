
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m2m_ctx; } ;
struct vpe_ctx {TYPE_2__* dev; struct vb2_v4l2_buffer* dst_vb; struct vb2_v4l2_buffer** src_vbs; TYPE_1__ fh; } ;
struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {int type; } ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;
struct TYPE_4__ {int lock; } ;


 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;

__attribute__((used)) static void vpe_return_all_buffers(struct vpe_ctx *ctx, struct vb2_queue *q,
       enum vb2_buffer_state state)
{
 struct vb2_v4l2_buffer *vb;
 unsigned long flags;

 for (;;) {
  if (V4L2_TYPE_IS_OUTPUT(q->type))
   vb = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
  else
   vb = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
  if (!vb)
   break;
  spin_lock_irqsave(&ctx->dev->lock, flags);
  v4l2_m2m_buf_done(vb, state);
  spin_unlock_irqrestore(&ctx->dev->lock, flags);
 }






 if (V4L2_TYPE_IS_OUTPUT(q->type)) {
  spin_lock_irqsave(&ctx->dev->lock, flags);

  if (ctx->src_vbs[2])
   v4l2_m2m_buf_done(ctx->src_vbs[2], state);

  if (ctx->src_vbs[1] && (ctx->src_vbs[1] != ctx->src_vbs[2]))
   v4l2_m2m_buf_done(ctx->src_vbs[1], state);

  if (ctx->src_vbs[0] &&
      (ctx->src_vbs[0] != ctx->src_vbs[1]) &&
      (ctx->src_vbs[0] != ctx->src_vbs[2]))
   v4l2_m2m_buf_done(ctx->src_vbs[0], state);

  ctx->src_vbs[2] = ((void*)0);
  ctx->src_vbs[1] = ((void*)0);
  ctx->src_vbs[0] = ((void*)0);

  spin_unlock_irqrestore(&ctx->dev->lock, flags);
 } else {
  if (ctx->dst_vb) {
   spin_lock_irqsave(&ctx->dev->lock, flags);

   v4l2_m2m_buf_done(ctx->dst_vb, state);
   ctx->dst_vb = ((void*)0);
   spin_unlock_irqrestore(&ctx->dev->lock, flags);
  }
 }
}
