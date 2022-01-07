
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_addr {int cr; int cb; int y; } ;


 scalar_t__ FIMC_REG_CIICBSA (int ) ;
 scalar_t__ FIMC_REG_CIICRSA (int ) ;
 scalar_t__ FIMC_REG_CIIYSA (int ) ;
 scalar_t__ FIMC_REG_CIREAL_ISIZE ;
 int FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void fimc_hw_set_input_addr(struct fimc_dev *dev, struct fimc_addr *paddr)
{
 u32 cfg = readl(dev->regs + FIMC_REG_CIREAL_ISIZE);
 cfg |= FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS;
 writel(cfg, dev->regs + FIMC_REG_CIREAL_ISIZE);

 writel(paddr->y, dev->regs + FIMC_REG_CIIYSA(0));
 writel(paddr->cb, dev->regs + FIMC_REG_CIICBSA(0));
 writel(paddr->cr, dev->regs + FIMC_REG_CIICRSA(0));

 cfg &= ~FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS;
 writel(cfg, dev->regs + FIMC_REG_CIREAL_ISIZE);
}
