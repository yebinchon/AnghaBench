
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_MAX_CURRENT ;
 int SDHCI_SPRD_MAX_CUR ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u32 sdhci_sprd_readl(struct sdhci_host *host, int reg)
{
 if (unlikely(reg == SDHCI_MAX_CURRENT))
  return SDHCI_SPRD_MAX_CUR;

 return readl_relaxed(host->ioaddr + reg);
}
