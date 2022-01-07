
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int gli_set_9750 (struct sdhci_host*) ;
 int sdhci_reset (struct sdhci_host*,int ) ;

__attribute__((used)) static void sdhci_gl9750_reset(struct sdhci_host *host, u8 mask)
{
 sdhci_reset(host, mask);
 gli_set_9750(host);
}
