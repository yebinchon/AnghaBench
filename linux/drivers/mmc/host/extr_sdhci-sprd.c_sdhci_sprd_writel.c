
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_INT_ENABLE ;
 int SDHCI_MAX_CURRENT ;
 int SDHCI_SIGNAL_ENABLE ;
 int SDHCI_SPRD_INT_SIGNAL_MASK ;
 scalar_t__ unlikely (int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static inline void sdhci_sprd_writel(struct sdhci_host *host, u32 val, int reg)
{

 if (unlikely(reg == SDHCI_MAX_CURRENT))
  return;

 if (unlikely(reg == SDHCI_SIGNAL_ENABLE || reg == SDHCI_INT_ENABLE))
  val = val & SDHCI_SPRD_INT_SIGNAL_MASK;

 writel_relaxed(val, host->ioaddr + reg);
}
