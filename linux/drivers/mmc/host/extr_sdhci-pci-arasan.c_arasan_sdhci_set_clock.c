
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int arasan_select_phy_clock (struct sdhci_host*) ;
 int sdhci_set_clock (struct sdhci_host*,unsigned int) ;

__attribute__((used)) static void arasan_sdhci_set_clock(struct sdhci_host *host, unsigned int clock)
{
 sdhci_set_clock(host, clock);


 arasan_select_phy_clock(host);
}
