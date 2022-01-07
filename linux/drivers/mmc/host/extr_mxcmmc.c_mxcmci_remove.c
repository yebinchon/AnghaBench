
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mxcmci_host {int clk_ipg; int clk_per; scalar_t__ dma; TYPE_1__* pdata; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* exit ) (int *,struct mmc_host*) ;} ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (scalar_t__) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mxcmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int *,struct mmc_host*) ;

__attribute__((used)) static int mxcmci_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);
 struct mxcmci_host *host = mmc_priv(mmc);

 mmc_remove_host(mmc);

 if (host->pdata && host->pdata->exit)
  host->pdata->exit(&pdev->dev, mmc);

 if (host->dma)
  dma_release_channel(host->dma);

 clk_disable_unprepare(host->clk_per);
 clk_disable_unprepare(host->clk_ipg);

 mmc_free_host(mmc);

 return 0;
}
