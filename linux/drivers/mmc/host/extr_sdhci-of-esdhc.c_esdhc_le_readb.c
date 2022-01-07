
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int esdhc_readb_fixup (struct sdhci_host*,int,int ) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u8 esdhc_le_readb(struct sdhci_host *host, int reg)
{
 u8 ret;
 u32 value;
 int base = reg & ~0x3;

 value = ioread32(host->ioaddr + base);
 ret = esdhc_readb_fixup(host, reg, value);
 return ret;
}
