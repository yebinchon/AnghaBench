
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int mmc; scalar_t__ ioaddr; } ;


 int mmc_hostname (int ) ;
 int pr_debug (char*,int ,int,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 sdhci_iproc_readl(struct sdhci_host *host, int reg)
{
 u32 val = readl(host->ioaddr + reg);

 pr_debug("%s: readl [0x%02x] 0x%08x\n",
   mmc_hostname(host->mmc), reg, val);
 return val;
}
