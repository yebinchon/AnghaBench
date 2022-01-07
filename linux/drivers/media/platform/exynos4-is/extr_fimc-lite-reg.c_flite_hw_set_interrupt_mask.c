
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; int out_path; } ;


 scalar_t__ FIMC_IO_DMA ;
 scalar_t__ FLITE_REG_CIGCTRL ;
 int FLITE_REG_CIGCTRL_IRQ_DISABLE_MASK ;
 int FLITE_REG_CIGCTRL_IRQ_ENDEN ;
 int FLITE_REG_CIGCTRL_IRQ_LASTEN ;
 int FLITE_REG_CIGCTRL_IRQ_OVFEN ;
 int FLITE_REG_CIGCTRL_IRQ_STARTEN ;
 scalar_t__ atomic_read (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void flite_hw_set_interrupt_mask(struct fimc_lite *dev)
{
 u32 cfg, intsrc;


 if (atomic_read(&dev->out_path) == FIMC_IO_DMA) {
  intsrc = FLITE_REG_CIGCTRL_IRQ_OVFEN |
    FLITE_REG_CIGCTRL_IRQ_LASTEN |
    FLITE_REG_CIGCTRL_IRQ_STARTEN |
    FLITE_REG_CIGCTRL_IRQ_ENDEN;
 } else {

  intsrc = FLITE_REG_CIGCTRL_IRQ_OVFEN |
    FLITE_REG_CIGCTRL_IRQ_LASTEN;
 }

 cfg = readl(dev->regs + FLITE_REG_CIGCTRL);
 cfg |= FLITE_REG_CIGCTRL_IRQ_DISABLE_MASK;
 cfg &= ~intsrc;
 writel(cfg, dev->regs + FLITE_REG_CIGCTRL);
}
