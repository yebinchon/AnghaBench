
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_MAX_CURRENT ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 sdhci_gl9750_readl(struct sdhci_host *host, int reg)
{
 u32 value;

 value = readl(host->ioaddr + reg);
 if (unlikely(reg == SDHCI_MAX_CURRENT && !(value & 0xff)))
  value |= 0xc8;

 return value;
}
