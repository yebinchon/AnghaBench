
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_ctx {int dev; int csi2_port; } ;


 int CAL_CSI2_VC_IRQENABLE (int) ;
 int CAL_HL_IRQENABLE_CLR (int) ;
 int CAL_HL_IRQ_CLEAR ;
 int CAL_HL_IRQ_MASK (int ) ;
 int reg_write (int ,int ,int ) ;
 int reg_write_field (int ,int ,int ,int ) ;

__attribute__((used)) static void disable_irqs(struct cal_ctx *ctx)
{

 reg_write_field(ctx->dev,
   CAL_HL_IRQENABLE_CLR(2),
   CAL_HL_IRQ_CLEAR,
   CAL_HL_IRQ_MASK(ctx->csi2_port));

 reg_write_field(ctx->dev,
   CAL_HL_IRQENABLE_CLR(3),
   CAL_HL_IRQ_CLEAR,
   CAL_HL_IRQ_MASK(ctx->csi2_port));

 reg_write(ctx->dev, CAL_CSI2_VC_IRQENABLE(1), 0);
}
