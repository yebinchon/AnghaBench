
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {unsigned int max_clk; } ;



__attribute__((used)) static unsigned int sdhci_cdns_get_timeout_clock(struct sdhci_host *host)
{




 return host->max_clk;
}
