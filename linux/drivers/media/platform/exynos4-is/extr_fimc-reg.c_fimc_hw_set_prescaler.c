
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_scaler {int hfactor; int vfactor; int pre_hratio; int pre_vratio; int pre_dst_width; int pre_dst_height; } ;
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_ctx {struct fimc_scaler scaler; struct fimc_dev* fimc_dev; } ;


 scalar_t__ FIMC_REG_CISCPREDST ;
 scalar_t__ FIMC_REG_CISCPRERATIO ;
 int writel (int,scalar_t__) ;

void fimc_hw_set_prescaler(struct fimc_ctx *ctx)
{
 struct fimc_dev *dev = ctx->fimc_dev;
 struct fimc_scaler *sc = &ctx->scaler;
 u32 cfg, shfactor;

 shfactor = 10 - (sc->hfactor + sc->vfactor);
 cfg = shfactor << 28;

 cfg |= (sc->pre_hratio << 16) | sc->pre_vratio;
 writel(cfg, dev->regs + FIMC_REG_CISCPRERATIO);

 cfg = (sc->pre_dst_width << 16) | sc->pre_dst_height;
 writel(cfg, dev->regs + FIMC_REG_CISCPREDST);
}
