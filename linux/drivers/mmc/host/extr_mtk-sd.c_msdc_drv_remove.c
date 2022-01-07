
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mt_gpdma_desc {int dummy; } ;
struct mt_bdma_desc {int dummy; } ;
struct TYPE_2__ {int bd_addr; int bd; int gpd_addr; int gpd; } ;
struct msdc_host {int mmc; TYPE_1__ dma; int dev; } ;
struct mmc_host {int dummy; } ;


 int MAX_BD_NUM ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int mmc_free_host (int ) ;
 struct msdc_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (int ) ;
 int msdc_deinit_hw (struct msdc_host*) ;
 int msdc_gate_clock (struct msdc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int msdc_drv_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct msdc_host *host;

 mmc = platform_get_drvdata(pdev);
 host = mmc_priv(mmc);

 pm_runtime_get_sync(host->dev);

 platform_set_drvdata(pdev, ((void*)0));
 mmc_remove_host(host->mmc);
 msdc_deinit_hw(host);
 msdc_gate_clock(host);

 pm_runtime_disable(host->dev);
 pm_runtime_put_noidle(host->dev);
 dma_free_coherent(&pdev->dev,
   2 * sizeof(struct mt_gpdma_desc),
   host->dma.gpd, host->dma.gpd_addr);
 dma_free_coherent(&pdev->dev, MAX_BD_NUM * sizeof(struct mt_bdma_desc),
   host->dma.bd, host->dma.bd_addr);

 mmc_free_host(host->mmc);

 return 0;
}
