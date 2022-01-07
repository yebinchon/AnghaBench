
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct moxart_host {scalar_t__ base; int dma_chan_rx; int dma_chan_tx; } ;
struct mmc_host {int dummy; } ;


 int CLK_OFF ;
 int IS_ERR (int ) ;
 scalar_t__ REG_CLOCK_CONTROL ;
 scalar_t__ REG_INTERRUPT_MASK ;
 scalar_t__ REG_POWER_CONTROL ;
 struct mmc_host* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int dma_release_channel (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct moxart_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int moxart_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = dev_get_drvdata(&pdev->dev);
 struct moxart_host *host = mmc_priv(mmc);

 dev_set_drvdata(&pdev->dev, ((void*)0));

 if (mmc) {
  if (!IS_ERR(host->dma_chan_tx))
   dma_release_channel(host->dma_chan_tx);
  if (!IS_ERR(host->dma_chan_rx))
   dma_release_channel(host->dma_chan_rx);
  mmc_remove_host(mmc);
  mmc_free_host(mmc);

  writel(0, host->base + REG_INTERRUPT_MASK);
  writel(0, host->base + REG_POWER_CONTROL);
  writel(readl(host->base + REG_CLOCK_CONTROL) | CLK_OFF,
         host->base + REG_CLOCK_CONTROL);
 }
 return 0;
}
