
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_CIIMGCPT ;
 int FIMC_REG_CIIMGCPT_IMGCPTEN ;
 int FIMC_REG_CIIMGCPT_IMGCPTEN_SC ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void fimc_hw_disable_capture(struct fimc_dev *dev)
{
 u32 cfg = readl(dev->regs + FIMC_REG_CIIMGCPT);
 cfg &= ~(FIMC_REG_CIIMGCPT_IMGCPTEN |
   FIMC_REG_CIIMGCPT_IMGCPTEN_SC);
 writel(cfg, dev->regs + FIMC_REG_CIIMGCPT);
}
