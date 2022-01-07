
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {int quirks2; } ;


 int ESDHC_HOST_CONTROL_RES ;
 int SDHCI_CTRL_DMA_MASK ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_QUIRK2_BROKEN_HOST_CONTROL ;

__attribute__((used)) static u32 esdhc_writeb_fixup(struct sdhci_host *host,
         int spec_reg, u8 value, u32 old_value)
{
 u32 ret;
 u32 dma_bits;
 u8 tmp;
 int shift = (spec_reg & 0x3) * 8;





 if (spec_reg == SDHCI_POWER_CONTROL)
  return old_value;




 if (spec_reg == SDHCI_HOST_CONTROL) {




  if (host->quirks2 & SDHCI_QUIRK2_BROKEN_HOST_CONTROL)
   return old_value;


  dma_bits = (value & SDHCI_CTRL_DMA_MASK) << 5;
  ret = (old_value & (~(SDHCI_CTRL_DMA_MASK << 5))) | dma_bits;
  tmp = (value & (~SDHCI_CTRL_DMA_MASK)) |
        (old_value & SDHCI_CTRL_DMA_MASK);
  ret = (ret & (~0xff)) | tmp;


  ret &= ~ESDHC_HOST_CONTROL_RES;
  return ret;
 }

 ret = (old_value & (~(0xff << shift))) | (value << shift);
 return ret;
}
