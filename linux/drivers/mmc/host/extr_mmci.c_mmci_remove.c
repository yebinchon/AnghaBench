
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variant_data {scalar_t__ mmcimask1; } ;
struct mmci_host {int clk; scalar_t__ base; struct variant_data* variant; } ;
struct mmc_host {int dummy; } ;
struct amba_device {int dev; } ;


 scalar_t__ MMCICOMMAND ;
 scalar_t__ MMCIDATACTRL ;
 scalar_t__ MMCIMASK0 ;
 scalar_t__ MMCIMASK1 ;
 struct mmc_host* amba_get_drvdata (struct amba_device*) ;
 int clk_disable_unprepare (int ) ;
 int mmc_free_host (struct mmc_host*) ;
 struct mmci_host* mmc_priv (struct mmc_host*) ;
 int mmc_remove_host (struct mmc_host*) ;
 int mmci_dma_release (struct mmci_host*) ;
 int pm_runtime_get_sync (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mmci_remove(struct amba_device *dev)
{
 struct mmc_host *mmc = amba_get_drvdata(dev);

 if (mmc) {
  struct mmci_host *host = mmc_priv(mmc);
  struct variant_data *variant = host->variant;





  pm_runtime_get_sync(&dev->dev);

  mmc_remove_host(mmc);

  writel(0, host->base + MMCIMASK0);

  if (variant->mmcimask1)
   writel(0, host->base + MMCIMASK1);

  writel(0, host->base + MMCICOMMAND);
  writel(0, host->base + MMCIDATACTRL);

  mmci_dma_release(host);
  clk_disable_unprepare(host->clk);
  mmc_free_host(mmc);
 }

 return 0;
}
