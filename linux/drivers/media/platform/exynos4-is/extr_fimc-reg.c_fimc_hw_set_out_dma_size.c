
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_frame {int f_height; int f_width; } ;
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_ctx {struct fimc_frame d_frame; struct fimc_dev* fimc_dev; } ;


 scalar_t__ FIMC_REG_CIGCTRL ;
 int FIMC_REG_CIGCTRL_CSC_ITU601_709 ;
 scalar_t__ FIMC_REG_ORGOSIZE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void fimc_hw_set_out_dma_size(struct fimc_ctx *ctx)
{
 struct fimc_dev *dev = ctx->fimc_dev;
 struct fimc_frame *frame = &ctx->d_frame;
 u32 cfg;

 cfg = (frame->f_height << 16) | frame->f_width;
 writel(cfg, dev->regs + FIMC_REG_ORGOSIZE);


 cfg = readl(dev->regs + FIMC_REG_CIGCTRL);
 if (frame->f_width >= 1280)
  cfg |= FIMC_REG_CIGCTRL_CSC_ITU601_709;
 else
  cfg &= ~FIMC_REG_CIGCTRL_CSC_ITU601_709;
 writel(cfg, dev->regs + FIMC_REG_CIGCTRL);

}
