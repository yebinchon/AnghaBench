
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_scaler {int main_vratio; int main_hratio; } ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {struct gsc_scaler scaler; struct gsc_dev* gsc_dev; } ;


 scalar_t__ GSC_MAIN_H_RATIO ;
 int GSC_MAIN_H_RATIO_VALUE (int ) ;
 scalar_t__ GSC_MAIN_V_RATIO ;
 int GSC_MAIN_V_RATIO_VALUE (int ) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_mainscaler(struct gsc_ctx *ctx)
{
 struct gsc_dev *dev = ctx->gsc_dev;
 struct gsc_scaler *sc = &ctx->scaler;
 u32 cfg;

 cfg = GSC_MAIN_H_RATIO_VALUE(sc->main_hratio);
 writel(cfg, dev->regs + GSC_MAIN_H_RATIO);

 cfg = GSC_MAIN_V_RATIO_VALUE(sc->main_vratio);
 writel(cfg, dev->regs + GSC_MAIN_V_RATIO);
}
