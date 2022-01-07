
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_hsmmc_host {int mmc; scalar_t__ dbclk; int dev; int rx_chan; int tx_chan; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int dev_pm_clear_wake_irq (int ) ;
 int device_init_wakeup (int *,int) ;
 int dma_release_channel (int ) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 struct omap_hsmmc_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int omap_hsmmc_remove(struct platform_device *pdev)
{
 struct omap_hsmmc_host *host = platform_get_drvdata(pdev);

 pm_runtime_get_sync(host->dev);
 mmc_remove_host(host->mmc);

 dma_release_channel(host->tx_chan);
 dma_release_channel(host->rx_chan);

 dev_pm_clear_wake_irq(host->dev);
 pm_runtime_dont_use_autosuspend(host->dev);
 pm_runtime_put_sync(host->dev);
 pm_runtime_disable(host->dev);
 device_init_wakeup(&pdev->dev, 0);
 if (host->dbclk)
  clk_disable_unprepare(host->dbclk);

 mmc_free_host(host->mmc);

 return 0;
}
