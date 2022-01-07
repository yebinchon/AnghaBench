
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_HOST_VERSION ;
 int SDHCI_SPEC_300 ;
 int readw (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 sdhci_sirf_readw_le(struct sdhci_host *host, int reg)
{
 u16 ret = 0;

 ret = readw(host->ioaddr + reg);

 if (unlikely(reg == SDHCI_HOST_VERSION)) {
  ret = readw(host->ioaddr + SDHCI_HOST_VERSION);
  ret |= SDHCI_SPEC_300;
 }

 return ret;
}
