
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mmc_host {int dummy; } ;
struct goldfish_mmc_host {int reg_base; int phys_base; int virt_base; int irq; } ;


 int BUFFER_SIZE ;
 int BUG_ON (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int free_irq (int ,struct goldfish_mmc_host*) ;
 int iounmap (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mmc_host* mmc_from_priv (struct goldfish_mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 struct goldfish_mmc_host* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int goldfish_mmc_remove(struct platform_device *pdev)
{
 struct goldfish_mmc_host *host = platform_get_drvdata(pdev);
 struct mmc_host *mmc = mmc_from_priv(host);

 BUG_ON(host == ((void*)0));

 mmc_remove_host(mmc);
 free_irq(host->irq, host);
 dma_free_coherent(&pdev->dev, BUFFER_SIZE, host->virt_base, host->phys_base);
 iounmap(host->reg_base);
 mmc_free_host(mmc);
 return 0;
}
