
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_scaler {int pre_vratio; int pre_hratio; int pre_shfactor; } ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {struct gsc_scaler scaler; struct gsc_dev* gsc_dev; } ;


 int GSC_PRESC_H_RATIO (int ) ;
 int GSC_PRESC_SHFACTOR (int ) ;
 int GSC_PRESC_V_RATIO (int ) ;
 scalar_t__ GSC_PRE_SCALE_RATIO ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_prescaler(struct gsc_ctx *ctx)
{
 struct gsc_dev *dev = ctx->gsc_dev;
 struct gsc_scaler *sc = &ctx->scaler;
 u32 cfg;

 cfg = GSC_PRESC_SHFACTOR(sc->pre_shfactor);
 cfg |= GSC_PRESC_H_RATIO(sc->pre_hratio);
 cfg |= GSC_PRESC_V_RATIO(sc->pre_vratio);
 writel(cfg, dev->regs + GSC_PRE_SCALE_RATIO);
}
