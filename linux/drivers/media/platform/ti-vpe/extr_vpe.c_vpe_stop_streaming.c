
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_ctx {TYPE_1__* dev; } ;
struct vb2_queue {int dummy; } ;
struct TYPE_2__ {int vpdma; } ;


 int VB2_BUF_STATE_ERROR ;
 struct vpe_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vpdma_dump_regs (int ) ;
 int vpe_dump_regs (TYPE_1__*) ;
 int vpe_return_all_buffers (struct vpe_ctx*,struct vb2_queue*,int ) ;

__attribute__((used)) static void vpe_stop_streaming(struct vb2_queue *q)
{
 struct vpe_ctx *ctx = vb2_get_drv_priv(q);

 vpe_dump_regs(ctx->dev);
 vpdma_dump_regs(ctx->dev->vpdma);

 vpe_return_all_buffers(ctx, q, VB2_BUF_STATE_ERROR);
}
