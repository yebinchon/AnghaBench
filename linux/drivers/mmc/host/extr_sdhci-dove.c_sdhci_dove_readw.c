
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int ioaddr; } ;




 int readw (int ) ;

__attribute__((used)) static u16 sdhci_dove_readw(struct sdhci_host *host, int reg)
{
 u16 ret;

 switch (reg) {
 case 129:
 case 128:

  return 0;
 default:
  ret = readw(host->ioaddr + reg);
 }
 return ret;
}
