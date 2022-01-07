
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cal_ctx {int dev; int csi2_port; } ;


 int CAL_CSI2_VC_IRQENABLE (int) ;
 int CAL_HL_IRQENABLE_SET (int) ;
 int CAL_HL_IRQ_ENABLE ;
 int CAL_HL_IRQ_MASK (int ) ;
 int reg_write (int ,int ,int) ;
 int reg_write_field (int ,int ,int ,int ) ;

__attribute__((used)) static void enable_irqs(struct cal_ctx *ctx)
{

 reg_write_field(ctx->dev,
   CAL_HL_IRQENABLE_SET(2),
   CAL_HL_IRQ_ENABLE,
   CAL_HL_IRQ_MASK(ctx->csi2_port));

 reg_write_field(ctx->dev,
   CAL_HL_IRQENABLE_SET(3),
   CAL_HL_IRQ_ENABLE,
   CAL_HL_IRQ_MASK(ctx->csi2_port));

 reg_write(ctx->dev, CAL_CSI2_VC_IRQENABLE(1), 0xFF000000);
}
