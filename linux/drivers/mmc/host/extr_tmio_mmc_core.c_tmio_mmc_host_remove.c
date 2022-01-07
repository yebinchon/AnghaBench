
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {scalar_t__ native_hotplug; int delayed_reset_work; int done; TYPE_1__* pdata; struct mmc_host* mmc; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int CTL_TRANSACTION_CTL ;
 int TMIO_MMC_SDIO_IRQ ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dev_pm_qos_hide_latency_limit (int *) ;
 int mmc_remove_host (struct mmc_host*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_put_sync (int *) ;
 int sd_ctrl_write16 (struct tmio_mmc_host*,int ,int) ;
 int tmio_mmc_release_dma (struct tmio_mmc_host*) ;

void tmio_mmc_host_remove(struct tmio_mmc_host *host)
{
 struct platform_device *pdev = host->pdev;
 struct mmc_host *mmc = host->mmc;

 pm_runtime_get_sync(&pdev->dev);

 if (host->pdata->flags & TMIO_MMC_SDIO_IRQ)
  sd_ctrl_write16(host, CTL_TRANSACTION_CTL, 0x0000);

 dev_pm_qos_hide_latency_limit(&pdev->dev);

 mmc_remove_host(mmc);
 cancel_work_sync(&host->done);
 cancel_delayed_work_sync(&host->delayed_reset_work);
 tmio_mmc_release_dma(host);

 pm_runtime_dont_use_autosuspend(&pdev->dev);
 if (host->native_hotplug)
  pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
}
