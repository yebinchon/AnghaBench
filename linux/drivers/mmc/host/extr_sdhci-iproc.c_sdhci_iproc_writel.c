
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int clock; scalar_t__ ioaddr; int mmc; } ;


 int mmc_hostname (int ) ;
 int pr_debug (char*,int ,int,int ) ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void sdhci_iproc_writel(struct sdhci_host *host, u32 val, int reg)
{
 pr_debug("%s: writel [0x%02x] 0x%08x\n",
   mmc_hostname(host->mmc), reg, val);

 writel(val, host->ioaddr + reg);

 if (host->clock <= 400000) {

  if (host->clock)
   udelay((4 * 1000000 + host->clock - 1) / host->clock);
  else
   udelay(10);
 }
}
