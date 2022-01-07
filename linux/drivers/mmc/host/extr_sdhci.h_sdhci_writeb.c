
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void sdhci_writeb(struct sdhci_host *host, u8 val, int reg)
{
 writeb(val, host->ioaddr + reg);
}
