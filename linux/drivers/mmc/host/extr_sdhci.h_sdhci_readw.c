
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static inline u16 sdhci_readw(struct sdhci_host *host, int reg)
{
 return readw(host->ioaddr + reg);
}
