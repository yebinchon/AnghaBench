
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; scalar_t__ desc_sz; scalar_t__ adma_addr; void* adma_table; } ;
struct sdhci_adma2_64_desc {int len; int cmd; int addr_lo; int addr_hi; } ;
typedef scalar_t__ dma_addr_t ;


 int ADMA2_END ;
 int SDHCI_DUMP (char*,unsigned long long,int ,int ,int ,...) ;
 int SDHCI_USE_64_BIT_DMA ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int) ;
 int le32_to_cpu (int ) ;
 int sdhci_dumpregs (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_adma_show_error(struct sdhci_host *host)
{
 void *desc = host->adma_table;
 dma_addr_t dma = host->adma_addr;

 sdhci_dumpregs(host);

 while (1) {
  struct sdhci_adma2_64_desc *dma_desc = desc;

  if (host->flags & SDHCI_USE_64_BIT_DMA)
   SDHCI_DUMP("%08llx: DMA 0x%08x%08x, LEN 0x%04x, Attr=0x%02x\n",
       (unsigned long long)dma,
       le32_to_cpu(dma_desc->addr_hi),
       le32_to_cpu(dma_desc->addr_lo),
       le16_to_cpu(dma_desc->len),
       le16_to_cpu(dma_desc->cmd));
  else
   SDHCI_DUMP("%08llx: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\n",
       (unsigned long long)dma,
       le32_to_cpu(dma_desc->addr_lo),
       le16_to_cpu(dma_desc->len),
       le16_to_cpu(dma_desc->cmd));

  desc += host->desc_sz;
  dma += host->desc_sz;

  if (dma_desc->cmd & cpu_to_le16(ADMA2_END))
   break;
 }
}
