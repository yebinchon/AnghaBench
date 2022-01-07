
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;



__attribute__((used)) static unsigned int sdhci_sprd_get_min_clock(struct sdhci_host *host)
{
 return 400000;
}
