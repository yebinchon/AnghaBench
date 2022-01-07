
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct jz4740_mmc_host {int mmc; scalar_t__ use_dma; int irq; int timeout_timer; } ;


 int del_timer_sync (int *) ;
 int free_irq (int ,struct jz4740_mmc_host*) ;
 int jz4740_mmc_release_dma_channels (struct jz4740_mmc_host*) ;
 int jz4740_mmc_reset (struct jz4740_mmc_host*) ;
 int jz4740_mmc_set_irq_enabled (struct jz4740_mmc_host*,int,int) ;
 int mmc_free_host (int ) ;
 int mmc_remove_host (int ) ;
 struct jz4740_mmc_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int jz4740_mmc_remove(struct platform_device *pdev)
{
 struct jz4740_mmc_host *host = platform_get_drvdata(pdev);

 del_timer_sync(&host->timeout_timer);
 jz4740_mmc_set_irq_enabled(host, 0xff, 0);
 jz4740_mmc_reset(host);

 mmc_remove_host(host->mmc);

 free_irq(host->irq, host);

 if (host->use_dma)
  jz4740_mmc_release_dma_channels(host);

 mmc_free_host(host->mmc);

 return 0;
}
