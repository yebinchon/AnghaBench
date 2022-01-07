
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int desc_sz; } ;
struct sdhci_adma2_64_desc {void* addr_hi; void* addr_lo; void* len; void* cmd; } ;
typedef int dma_addr_t ;


 int SDHCI_USE_64_BIT_DMA ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

void sdhci_adma_write_desc(struct sdhci_host *host, void **desc,
      dma_addr_t addr, int len, unsigned int cmd)
{
 struct sdhci_adma2_64_desc *dma_desc = *desc;


 dma_desc->cmd = cpu_to_le16(cmd);
 dma_desc->len = cpu_to_le16(len);
 dma_desc->addr_lo = cpu_to_le32(lower_32_bits(addr));

 if (host->flags & SDHCI_USE_64_BIT_DMA)
  dma_desc->addr_hi = cpu_to_le32(upper_32_bits(addr));

 *desc += host->desc_sz;
}
