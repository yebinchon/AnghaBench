
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct flite_frame {int dummy; } ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIGCTRL ;
 int FLITE_REG_CIGCTRL_ODMA_DISABLE ;
 int flite_hw_set_dma_window (struct fimc_lite*,struct flite_frame*) ;
 int flite_hw_set_out_order (struct fimc_lite*,struct flite_frame*) ;
 int flite_hw_set_pack12 (struct fimc_lite*,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void flite_hw_set_output_dma(struct fimc_lite *dev, struct flite_frame *f,
        bool enable)
{
 u32 cfg = readl(dev->regs + FLITE_REG_CIGCTRL);

 if (!enable) {
  cfg |= FLITE_REG_CIGCTRL_ODMA_DISABLE;
  writel(cfg, dev->regs + FLITE_REG_CIGCTRL);
  return;
 }

 cfg &= ~FLITE_REG_CIGCTRL_ODMA_DISABLE;
 writel(cfg, dev->regs + FLITE_REG_CIGCTRL);

 flite_hw_set_out_order(dev, f);
 flite_hw_set_dma_window(dev, f);
 flite_hw_set_pack12(dev, 0);
}
