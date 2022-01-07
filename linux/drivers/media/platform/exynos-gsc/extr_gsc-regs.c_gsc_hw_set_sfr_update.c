
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {struct gsc_dev* gsc_dev; } ;


 scalar_t__ GSC_ENABLE ;
 int GSC_ENABLE_SFR_UPDATE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_sfr_update(struct gsc_ctx *ctx)
{
 struct gsc_dev *dev = ctx->gsc_dev;
 u32 cfg;

 cfg = readl(dev->regs + GSC_ENABLE);
 cfg |= GSC_ENABLE_SFR_UPDATE;
 writel(cfg, dev->regs + GSC_ENABLE);
}
