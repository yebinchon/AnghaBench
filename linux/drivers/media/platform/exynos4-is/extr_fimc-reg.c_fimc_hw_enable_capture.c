
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct fimc_ctx {TYPE_1__ scaler; struct fimc_dev* fimc_dev; } ;


 scalar_t__ FIMC_REG_CIIMGCPT ;
 int FIMC_REG_CIIMGCPT_CPT_FREN_ENABLE ;
 int FIMC_REG_CIIMGCPT_IMGCPTEN ;
 int FIMC_REG_CIIMGCPT_IMGCPTEN_SC ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_enable_capture(struct fimc_ctx *ctx)
{
 struct fimc_dev *dev = ctx->fimc_dev;
 u32 cfg;

 cfg = readl(dev->regs + FIMC_REG_CIIMGCPT);
 cfg |= FIMC_REG_CIIMGCPT_CPT_FREN_ENABLE;

 if (ctx->scaler.enabled)
  cfg |= FIMC_REG_CIIMGCPT_IMGCPTEN_SC;
 else
  cfg &= FIMC_REG_CIIMGCPT_IMGCPTEN_SC;

 cfg |= FIMC_REG_CIIMGCPT_IMGCPTEN;
 writel(cfg, dev->regs + FIMC_REG_CIIMGCPT);
}
