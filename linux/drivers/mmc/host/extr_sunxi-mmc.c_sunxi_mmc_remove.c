
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_mmc_host {int sg_dma; int sg_cpu; int irq; } ;
struct platform_device {int dev; } ;
struct mmc_host {int dummy; } ;


 int PAGE_SIZE ;
 int disable_irq (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct sunxi_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_force_suspend (int *) ;
 int sunxi_mmc_disable (struct sunxi_mmc_host*) ;

__attribute__((used)) static int sunxi_mmc_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);
 struct sunxi_mmc_host *host = mmc_priv(mmc);

 mmc_remove_host(mmc);
 pm_runtime_force_suspend(&pdev->dev);
 disable_irq(host->irq);
 sunxi_mmc_disable(host);
 dma_free_coherent(&pdev->dev, PAGE_SIZE, host->sg_cpu, host->sg_dma);
 mmc_free_host(mmc);

 return 0;
}
