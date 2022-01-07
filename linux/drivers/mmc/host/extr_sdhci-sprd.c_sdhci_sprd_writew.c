
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_BLOCK_COUNT ;
 scalar_t__ unlikely (int) ;
 int writew_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void sdhci_sprd_writew(struct sdhci_host *host, u16 val, int reg)
{

 if (unlikely(reg == SDHCI_BLOCK_COUNT))
  return;

 writew_relaxed(val, host->ioaddr + reg);
}
