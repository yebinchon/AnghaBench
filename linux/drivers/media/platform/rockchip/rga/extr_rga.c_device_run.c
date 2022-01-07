
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_v4l2_buffer {int vb2_buf; } ;
struct rockchip_rga {int ctrl_lock; struct rga_ctx* curr; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct rga_ctx {TYPE_1__ fh; struct rockchip_rga* rga; } ;


 int rga_buf_map (int *) ;
 int rga_hw_start (struct rockchip_rga*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_dst_buf (int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_next_src_buf (int ) ;

__attribute__((used)) static void device_run(void *prv)
{
 struct rga_ctx *ctx = prv;
 struct rockchip_rga *rga = ctx->rga;
 struct vb2_v4l2_buffer *src, *dst;
 unsigned long flags;

 spin_lock_irqsave(&rga->ctrl_lock, flags);

 rga->curr = ctx;

 src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
 dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);

 rga_buf_map(&src->vb2_buf);
 rga_buf_map(&dst->vb2_buf);

 rga_hw_start(rga);

 spin_unlock_irqrestore(&rga->ctrl_lock, flags);
}
