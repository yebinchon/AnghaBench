
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxcmci_host {int use_sdio; int lock; } ;
struct mmc_host {int dummy; } ;


 int INT_SDIO_IRQ_EN ;
 int MMC_REG_INT_CNTR ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;
 int mxcmci_readl (struct mxcmci_host*,int ) ;
 int mxcmci_writel (struct mxcmci_host*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mxcmci_enable_sdio_irq(struct mmc_host *mmc, int enable)
{
 struct mxcmci_host *host = mmc_priv(mmc);
 unsigned long flags;
 u32 int_cntr;

 spin_lock_irqsave(&host->lock, flags);
 host->use_sdio = enable;
 int_cntr = mxcmci_readl(host, MMC_REG_INT_CNTR);

 if (enable)
  int_cntr |= INT_SDIO_IRQ_EN;
 else
  int_cntr &= ~INT_SDIO_IRQ_EN;

 mxcmci_writel(host, int_cntr, MMC_REG_INT_CNTR);
 spin_unlock_irqrestore(&host->lock, flags);
}
