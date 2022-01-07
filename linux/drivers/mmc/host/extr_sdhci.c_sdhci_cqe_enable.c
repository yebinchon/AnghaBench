
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int caps1; int flags; int cqe_on; int lock; int ier; int cqe_ier; int sdma_boundary; scalar_t__ v4_mode; } ;
struct mmc_host {int dummy; } ;


 int SDHCI_BLOCK_SIZE ;
 int SDHCI_CAN_DO_ADMA3 ;
 int SDHCI_CTRL_ADMA3 ;
 int SDHCI_CTRL_ADMA32 ;
 int SDHCI_CTRL_ADMA64 ;
 int SDHCI_CTRL_DMA_MASK ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_INT_ENABLE ;
 int SDHCI_INT_STATUS ;
 int SDHCI_MAKE_BLKSZ (int ,int) ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_USE_64_BIT_DMA ;
 int mmc_hostname (struct mmc_host*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_set_timeout (struct sdhci_host*,int *) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sdhci_cqe_enable(struct mmc_host *mmc)
{
 struct sdhci_host *host = mmc_priv(mmc);
 unsigned long flags;
 u8 ctrl;

 spin_lock_irqsave(&host->lock, flags);

 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);
 ctrl &= ~SDHCI_CTRL_DMA_MASK;





 if (host->v4_mode && (host->caps1 & SDHCI_CAN_DO_ADMA3))
  ctrl |= SDHCI_CTRL_ADMA3;
 else if (host->flags & SDHCI_USE_64_BIT_DMA)
  ctrl |= SDHCI_CTRL_ADMA64;
 else
  ctrl |= SDHCI_CTRL_ADMA32;
 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);

 sdhci_writew(host, SDHCI_MAKE_BLKSZ(host->sdma_boundary, 512),
       SDHCI_BLOCK_SIZE);


 sdhci_set_timeout(host, ((void*)0));

 host->ier = host->cqe_ier;

 sdhci_writel(host, host->ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, host->ier, SDHCI_SIGNAL_ENABLE);

 host->cqe_on = 1;

 pr_debug("%s: sdhci: CQE on, IRQ mask %#x, IRQ status %#x\n",
   mmc_hostname(mmc), host->ier,
   sdhci_readl(host, SDHCI_INT_STATUS));

 spin_unlock_irqrestore(&host->lock, flags);
}
