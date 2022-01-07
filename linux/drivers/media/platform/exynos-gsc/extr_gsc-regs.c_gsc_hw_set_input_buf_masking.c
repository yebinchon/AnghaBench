
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsc_dev {scalar_t__ regs; } ;


 scalar_t__ GSC_IN_BASE_ADDR_CB_MASK ;
 scalar_t__ GSC_IN_BASE_ADDR_CR_MASK ;
 scalar_t__ GSC_IN_BASE_ADDR_Y_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void gsc_hw_set_input_buf_masking(struct gsc_dev *dev, u32 shift,
    bool enable)
{
 u32 cfg = readl(dev->regs + GSC_IN_BASE_ADDR_Y_MASK);
 u32 mask = 1 << shift;

 cfg &= ~mask;
 cfg |= enable << shift;

 writel(cfg, dev->regs + GSC_IN_BASE_ADDR_Y_MASK);
 writel(cfg, dev->regs + GSC_IN_BASE_ADDR_CB_MASK);
 writel(cfg, dev->regs + GSC_IN_BASE_ADDR_CR_MASK);
}
