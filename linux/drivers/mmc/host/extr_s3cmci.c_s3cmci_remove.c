
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3cmci_host {TYPE_2__* mem; int base; int irq; int dma; int pio_tasklet; int clk; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int start; } ;


 int S3C2410_GPE (int) ;
 int clk_put (int ) ;
 int dma_release_channel (int ) ;
 int free_irq (int ,struct s3cmci_host*) ;
 int gpio_free (int) ;
 int iounmap (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 struct mmc_host* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_2__*) ;
 scalar_t__ s3cmci_host_usedma (struct s3cmci_host*) ;
 int s3cmci_shutdown (struct platform_device*) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static int s3cmci_remove(struct platform_device *pdev)
{
 struct mmc_host *mmc = platform_get_drvdata(pdev);
 struct s3cmci_host *host = mmc_priv(mmc);
 int i;

 s3cmci_shutdown(pdev);

 clk_put(host->clk);

 tasklet_disable(&host->pio_tasklet);

 if (s3cmci_host_usedma(host))
  dma_release_channel(host->dma);

 free_irq(host->irq, host);

 if (!pdev->dev.of_node)
  for (i = S3C2410_GPE(5); i <= S3C2410_GPE(10); i++)
   gpio_free(i);

 iounmap(host->base);
 release_mem_region(host->mem->start, resource_size(host->mem));

 mmc_free_host(mmc);
 return 0;
}
