
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_ctx {scalar_t__ in_path; struct fimc_dev* fimc_dev; } ;


 scalar_t__ FIMC_IO_DMA ;
 scalar_t__ FIMC_REG_MSCTRL ;
 int FIMC_REG_MSCTRL_INPUT_EXTCAM ;
 int FIMC_REG_MSCTRL_INPUT_MASK ;
 int FIMC_REG_MSCTRL_INPUT_MEMORY ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_set_input_path(struct fimc_ctx *ctx)
{
 struct fimc_dev *dev = ctx->fimc_dev;

 u32 cfg = readl(dev->regs + FIMC_REG_MSCTRL);
 cfg &= ~FIMC_REG_MSCTRL_INPUT_MASK;

 if (ctx->in_path == FIMC_IO_DMA)
  cfg |= FIMC_REG_MSCTRL_INPUT_MEMORY;
 else
  cfg |= FIMC_REG_MSCTRL_INPUT_EXTCAM;

 writel(cfg, dev->regs + FIMC_REG_MSCTRL);
}
