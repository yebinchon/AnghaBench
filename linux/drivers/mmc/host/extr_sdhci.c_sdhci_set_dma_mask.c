
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int quirks2; int flags; struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int SDHCI_QUIRK2_BROKEN_64_BIT_DMA ;
 int SDHCI_USE_64_BIT_DMA ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 struct device* mmc_dev (struct mmc_host*) ;
 int mmc_hostname (struct mmc_host*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int sdhci_set_dma_mask(struct sdhci_host *host)
{
 struct mmc_host *mmc = host->mmc;
 struct device *dev = mmc_dev(mmc);
 int ret = -EINVAL;

 if (host->quirks2 & SDHCI_QUIRK2_BROKEN_64_BIT_DMA)
  host->flags &= ~SDHCI_USE_64_BIT_DMA;


 if (host->flags & SDHCI_USE_64_BIT_DMA) {
  ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
  if (ret) {
   pr_warn("%s: Failed to set 64-bit DMA mask.\n",
    mmc_hostname(mmc));
   host->flags &= ~SDHCI_USE_64_BIT_DMA;
  }
 }


 if (ret) {
  ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
  if (ret)
   pr_warn("%s: Failed to set 32-bit DMA mask.\n",
    mmc_hostname(mmc));
 }

 return ret;
}
