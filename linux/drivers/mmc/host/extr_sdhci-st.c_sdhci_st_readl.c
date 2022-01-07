
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int ioaddr; } ;


 int SDHCI_CAN_VDD_300 ;

 int readl_relaxed (int ) ;

__attribute__((used)) static u32 sdhci_st_readl(struct sdhci_host *host, int reg)
{
 u32 ret;

 switch (reg) {
 case 128:
  ret = readl_relaxed(host->ioaddr + reg);

  ret &= ~SDHCI_CAN_VDD_300;
  break;
 default:
  ret = readl_relaxed(host->ioaddr + reg);
 }
 return ret;
}
