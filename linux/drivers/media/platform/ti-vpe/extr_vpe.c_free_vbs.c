
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_dev {int lock; } ;
struct vpe_ctx {int ** src_vbs; struct vpe_dev* dev; } ;


 int VB2_BUF_STATE_DONE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_buf_done (int *,int ) ;

__attribute__((used)) static void free_vbs(struct vpe_ctx *ctx)
{
 struct vpe_dev *dev = ctx->dev;
 unsigned long flags;

 if (ctx->src_vbs[2] == ((void*)0))
  return;

 spin_lock_irqsave(&dev->lock, flags);
 if (ctx->src_vbs[2]) {
  v4l2_m2m_buf_done(ctx->src_vbs[2], VB2_BUF_STATE_DONE);
  if (ctx->src_vbs[1] && (ctx->src_vbs[1] != ctx->src_vbs[2]))
   v4l2_m2m_buf_done(ctx->src_vbs[1], VB2_BUF_STATE_DONE);
  ctx->src_vbs[2] = ((void*)0);
  ctx->src_vbs[1] = ((void*)0);
 }
 spin_unlock_irqrestore(&dev->lock, flags);
}
