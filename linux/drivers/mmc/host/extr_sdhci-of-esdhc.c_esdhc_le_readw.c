
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int esdhc_readw_fixup (struct sdhci_host*,int,int ) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u16 esdhc_le_readw(struct sdhci_host *host, int reg)
{
 u16 ret;
 u32 value;
 int base = reg & ~0x3;

 value = ioread32(host->ioaddr + base);
 ret = esdhc_readw_fixup(host, reg, value);
 return ret;
}
