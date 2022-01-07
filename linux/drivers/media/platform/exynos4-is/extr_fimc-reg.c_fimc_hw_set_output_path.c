
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_ctx {scalar_t__ out_path; struct fimc_dev* fimc_dev; } ;


 scalar_t__ FIMC_IO_LCDFIFO ;
 scalar_t__ FIMC_REG_CISCCTRL ;
 int FIMC_REG_CISCCTRL_LCDPATHEN_FIFO ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_set_output_path(struct fimc_ctx *ctx)
{
 struct fimc_dev *dev = ctx->fimc_dev;

 u32 cfg = readl(dev->regs + FIMC_REG_CISCCTRL);
 cfg &= ~FIMC_REG_CISCCTRL_LCDPATHEN_FIFO;
 if (ctx->out_path == FIMC_IO_LCDFIFO)
  cfg |= FIMC_REG_CISCCTRL_LCDPATHEN_FIFO;
 writel(cfg, dev->regs + FIMC_REG_CISCCTRL);
}
