
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; } ;
typedef int dma_addr_t ;


 int SDHCI_ADMA_ADDRESS ;
 int SDHCI_ADMA_ADDRESS_HI ;
 int SDHCI_USE_64_BIT_DMA ;
 int lower_32_bits (int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void sdhci_set_adma_addr(struct sdhci_host *host, dma_addr_t addr)
{
 sdhci_writel(host, lower_32_bits(addr), SDHCI_ADMA_ADDRESS);
 if (host->flags & SDHCI_USE_64_BIT_DMA)
  sdhci_writel(host, upper_32_bits(addr), SDHCI_ADMA_ADDRESS_HI);
}
