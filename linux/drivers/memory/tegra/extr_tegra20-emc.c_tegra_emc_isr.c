
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_emc {scalar_t__ regs; int dev; int clk_handshake_complete; } ;
typedef int irqreturn_t ;


 int EMC_CLKCHANGE_COMPLETE_INT ;
 scalar_t__ EMC_INTSTATUS ;
 int EMC_REFRESH_OVERFLOW_INT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int dev_err_ratelimited (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tegra_emc_isr(int irq, void *data)
{
 struct tegra_emc *emc = data;
 u32 intmask = EMC_REFRESH_OVERFLOW_INT | EMC_CLKCHANGE_COMPLETE_INT;
 u32 status;

 status = readl_relaxed(emc->regs + EMC_INTSTATUS) & intmask;
 if (!status)
  return IRQ_NONE;


 if (status & EMC_CLKCHANGE_COMPLETE_INT)
  complete(&emc->clk_handshake_complete);


 if (status & EMC_REFRESH_OVERFLOW_INT)
  dev_err_ratelimited(emc->dev,
        "refresh request overflow timeout\n");


 writel_relaxed(status, emc->regs + EMC_INTSTATUS);

 return IRQ_HANDLED;
}
