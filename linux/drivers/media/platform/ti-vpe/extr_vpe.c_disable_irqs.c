
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {int vpdma; } ;


 int VPE_INT0_ENABLE0_CLR ;
 int VPE_INT0_ENABLE1_CLR ;
 int vpdma_enable_list_complete_irq (int ,int ,int ,int) ;
 int write_reg (TYPE_1__*,int ,int) ;

__attribute__((used)) static void disable_irqs(struct vpe_ctx *ctx)
{
 write_reg(ctx->dev, VPE_INT0_ENABLE0_CLR, 0xffffffff);
 write_reg(ctx->dev, VPE_INT0_ENABLE1_CLR, 0xffffffff);

 vpdma_enable_list_complete_irq(ctx->dev->vpdma, 0, 0, 0);
}
