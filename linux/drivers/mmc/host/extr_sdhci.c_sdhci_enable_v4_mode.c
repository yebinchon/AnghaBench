
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int v4_mode; } ;


 int sdhci_do_enable_v4_mode (struct sdhci_host*) ;

void sdhci_enable_v4_mode(struct sdhci_host *host)
{
 host->v4_mode = 1;
 sdhci_do_enable_v4_mode(host);
}
