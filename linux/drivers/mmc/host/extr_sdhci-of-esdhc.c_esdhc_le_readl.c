
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 scalar_t__ ESDHC_CAPABILITIES_1 ;
 int SDHCI_CAPABILITIES_1 ;
 int esdhc_readl_fixup (struct sdhci_host*,int,int ) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 esdhc_le_readl(struct sdhci_host *host, int reg)
{
 u32 ret;
 u32 value;

 if (reg == SDHCI_CAPABILITIES_1)
  value = ioread32(host->ioaddr + ESDHC_CAPABILITIES_1);
 else
  value = ioread32(host->ioaddr + reg);

 ret = esdhc_readl_fixup(host, reg, value);

 return ret;
}
