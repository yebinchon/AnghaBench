
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; } ;
struct device {int of_node; } ;


 int DMA_BIT_MASK (int) ;
 int ESDHC_DMA_SNOOP ;
 int ESDHC_DMA_SYSCTL ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 struct device* mmc_dev (int ) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 scalar_t__ of_dma_is_coherent (int ) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static int esdhc_of_enable_dma(struct sdhci_host *host)
{
 u32 value;
 struct device *dev = mmc_dev(host->mmc);

 if (of_device_is_compatible(dev->of_node, "fsl,ls1043a-esdhc") ||
     of_device_is_compatible(dev->of_node, "fsl,ls1046a-esdhc"))
  dma_set_mask_and_coherent(dev, DMA_BIT_MASK(40));

 value = sdhci_readl(host, ESDHC_DMA_SYSCTL);

 if (of_dma_is_coherent(dev->of_node))
  value |= ESDHC_DMA_SNOOP;
 else
  value &= ~ESDHC_DMA_SNOOP;

 sdhci_writel(host, value, ESDHC_DMA_SYSCTL);
 return 0;
}
