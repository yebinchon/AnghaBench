
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ v4_mode; } ;
typedef int dma_addr_t ;


 int SDHCI_DMA_ADDRESS ;
 int sdhci_set_adma_addr (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_set_sdma_addr(struct sdhci_host *host, dma_addr_t addr)
{
 if (host->v4_mode)
  sdhci_set_adma_addr(host, addr);
 else
  sdhci_writel(host, addr, SDHCI_DMA_ADDRESS);
}
