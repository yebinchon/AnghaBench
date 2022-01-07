
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sdhci_writel(struct sdhci_host *host, u32 val, int reg)
{
 writel(val, host->ioaddr + reg);
}
