
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct mmc_omap_host {int nr_slots; int mmc_omap_wq; scalar_t__ dma_rx; scalar_t__ dma_tx; int iclk; int fclk; int irq; TYPE_1__* pdata; int * slots; } ;
struct TYPE_2__ {int (* cleanup ) (int *) ;} ;


 int BUG_ON (int ) ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int destroy_workqueue (int ) ;
 int dma_release_channel (scalar_t__) ;
 int free_irq (int ,struct mmc_omap_host*) ;
 int mmc_omap_fclk_enable (struct mmc_omap_host*,int ) ;
 int mmc_omap_remove_slot (int ) ;
 struct mmc_omap_host* platform_get_drvdata (struct platform_device*) ;
 int stub1 (int *) ;

__attribute__((used)) static int mmc_omap_remove(struct platform_device *pdev)
{
 struct mmc_omap_host *host = platform_get_drvdata(pdev);
 int i;

 BUG_ON(host == ((void*)0));

 for (i = 0; i < host->nr_slots; i++)
  mmc_omap_remove_slot(host->slots[i]);

 if (host->pdata->cleanup)
  host->pdata->cleanup(&pdev->dev);

 mmc_omap_fclk_enable(host, 0);
 free_irq(host->irq, host);
 clk_put(host->fclk);
 clk_disable(host->iclk);
 clk_put(host->iclk);

 if (host->dma_tx)
  dma_release_channel(host->dma_tx);
 if (host->dma_rx)
  dma_release_channel(host->dma_rx);

 destroy_workqueue(host->mmc_omap_wq);

 return 0;
}
