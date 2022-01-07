
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {scalar_t__ ctl; int lock; } ;


 int TMIO_STAT_DATAEND ;
 scalar_t__ UNIPHIER_SD_DMA_CTL ;
 int UNIPHIER_SD_DMA_CTL_START ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_mmc_enable_mmc_irqs (struct tmio_mmc_host*,int ) ;
 int uniphier_sd_dma_endisable (struct tmio_mmc_host*,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_sd_internal_dma_issue(unsigned long arg)
{
 struct tmio_mmc_host *host = (void *)arg;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 tmio_mmc_enable_mmc_irqs(host, TMIO_STAT_DATAEND);
 spin_unlock_irqrestore(&host->lock, flags);

 uniphier_sd_dma_endisable(host, 1);
 writel(UNIPHIER_SD_DMA_CTL_START, host->ctl + UNIPHIER_SD_DMA_CTL);
}
