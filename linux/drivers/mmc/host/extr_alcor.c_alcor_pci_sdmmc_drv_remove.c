
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {int timeout_work; } ;


 int alcor_hw_uninit (struct alcor_sdmmc_host*) ;
 int alcor_request_complete (struct alcor_sdmmc_host*,int ) ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 struct alcor_sdmmc_host* dev_get_drvdata (int *) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mmc_host* mmc_from_priv (struct alcor_sdmmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;

__attribute__((used)) static int alcor_pci_sdmmc_drv_remove(struct platform_device *pdev)
{
 struct alcor_sdmmc_host *host = dev_get_drvdata(&pdev->dev);
 struct mmc_host *mmc = mmc_from_priv(host);

 if (cancel_delayed_work_sync(&host->timeout_work))
  alcor_request_complete(host, 0);

 alcor_hw_uninit(host);
 mmc_remove_host(mmc);
 mmc_free_host(mmc);

 return 0;
}
