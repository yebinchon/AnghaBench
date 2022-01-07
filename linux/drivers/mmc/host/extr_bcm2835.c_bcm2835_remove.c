
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;
struct bcm2835_host {scalar_t__ dma_chan_rxtx; int timeout_work; int dma_work; int irq; scalar_t__ ioaddr; } ;


 scalar_t__ SDVDD ;
 int SDVDD_POWER_OFF ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dma_release_channel (scalar_t__) ;
 int free_irq (int ,struct bcm2835_host*) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mmc_host* mmc_from_priv (struct bcm2835_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct bcm2835_host* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bcm2835_remove(struct platform_device *pdev)
{
 struct bcm2835_host *host = platform_get_drvdata(pdev);
 struct mmc_host *mmc = mmc_from_priv(host);

 mmc_remove_host(mmc);

 writel(SDVDD_POWER_OFF, host->ioaddr + SDVDD);

 free_irq(host->irq, host);

 cancel_work_sync(&host->dma_work);
 cancel_delayed_work_sync(&host->timeout_work);

 if (host->dma_chan_rxtx)
  dma_release_channel(host->dma_chan_rxtx);

 mmc_free_host(mmc);

 return 0;
}
