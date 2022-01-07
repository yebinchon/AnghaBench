
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;
struct gsc_ctx {scalar_t__ out_path; struct gsc_dev* gsc_dev; } ;


 scalar_t__ GSC_DMA ;
 scalar_t__ GSC_OUT_CON ;
 int GSC_OUT_PATH_LOCAL ;
 int GSC_OUT_PATH_MASK ;
 int GSC_OUT_PATH_MEMORY ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void gsc_hw_set_output_path(struct gsc_ctx *ctx)
{
 struct gsc_dev *dev = ctx->gsc_dev;

 u32 cfg = readl(dev->regs + GSC_OUT_CON);
 cfg &= ~GSC_OUT_PATH_MASK;

 if (ctx->out_path == GSC_DMA)
  cfg |= GSC_OUT_PATH_MEMORY;
 else
  cfg |= GSC_OUT_PATH_LOCAL;

 writel(cfg, dev->regs + GSC_OUT_CON);
}
