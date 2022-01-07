
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_CAN_VDD_300 ;

 int readl (scalar_t__) ;

__attribute__((used)) static u32 sdhci_dove_readl(struct sdhci_host *host, int reg)
{
 u32 ret;

 ret = readl(host->ioaddr + reg);

 switch (reg) {
 case 128:

  ret &= ~SDHCI_CAN_VDD_300;
  break;
 }
 return ret;
}
