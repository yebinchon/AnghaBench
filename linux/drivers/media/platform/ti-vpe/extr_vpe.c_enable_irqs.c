
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpe_ctx {TYPE_1__* dev; } ;
struct TYPE_2__ {int vpdma; } ;


 int VPE_DEI_ERROR_INT ;
 int VPE_DS1_UV_ERROR_INT ;
 int VPE_INT0_ENABLE0_SET ;
 int VPE_INT0_ENABLE1_SET ;
 int VPE_INT0_LIST0_COMPLETE ;
 int vpdma_enable_list_complete_irq (int ,int ,int ,int) ;
 int write_reg (TYPE_1__*,int ,int) ;

__attribute__((used)) static void enable_irqs(struct vpe_ctx *ctx)
{
 write_reg(ctx->dev, VPE_INT0_ENABLE0_SET, VPE_INT0_LIST0_COMPLETE);
 write_reg(ctx->dev, VPE_INT0_ENABLE1_SET, VPE_DEI_ERROR_INT |
    VPE_DS1_UV_ERROR_INT);

 vpdma_enable_list_complete_irq(ctx->dev->vpdma, 0, 0, 1);
}
