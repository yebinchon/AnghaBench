
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int ESDHC_CTRL_4BITBUS ;
 int ESDHC_CTRL_8BITBUS ;
 int SDHCI_CTRL_DMA_MASK ;
 int SDHCI_CTRL_LED ;

 int readb (scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u8 esdhc_readb_le(struct sdhci_host *host, int reg)
{
 u8 ret;
 u32 val;

 switch (reg) {
 case 128:
  val = readl(host->ioaddr + reg);

  ret = val & SDHCI_CTRL_LED;
  ret |= (val >> 5) & SDHCI_CTRL_DMA_MASK;
  ret |= (val & ESDHC_CTRL_4BITBUS);
  ret |= (val & ESDHC_CTRL_8BITBUS) << 3;
  return ret;
 }

 return readb(host->ioaddr + reg);
}
