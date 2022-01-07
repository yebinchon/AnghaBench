
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_CTRL_DMA_MASK ;
 int SDHCI_HOST_CONTROL ;

__attribute__((used)) static u8 esdhc_readb_fixup(struct sdhci_host *host,
         int spec_reg, u32 value)
{
 u8 ret;
 u8 dma_bits;
 int shift = (spec_reg & 0x3) * 8;

 ret = (value >> shift) & 0xff;





 if (spec_reg == SDHCI_HOST_CONTROL) {

  dma_bits = (value >> 5) & SDHCI_CTRL_DMA_MASK;

  ret &= ~SDHCI_CTRL_DMA_MASK;
  ret |= dma_bits;
 }
 return ret;
}
