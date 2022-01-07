
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 scalar_t__ SDMMC_MC1R ;
 int SDMMC_MC1R_FCD ;
 int readb (scalar_t__) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void sdhci_at91_set_force_card_detect(struct sdhci_host *host)
{
 u8 mc1r;

 mc1r = readb(host->ioaddr + SDMMC_MC1R);
 mc1r |= SDMMC_MC1R_FCD;
 writeb(mc1r, host->ioaddr + SDMMC_MC1R);
}
