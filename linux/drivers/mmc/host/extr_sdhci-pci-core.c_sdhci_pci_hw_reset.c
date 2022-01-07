
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_slot {int (* hw_reset ) (struct sdhci_host*) ;} ;
struct sdhci_host {int dummy; } ;


 struct sdhci_pci_slot* sdhci_priv (struct sdhci_host*) ;
 int stub1 (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_pci_hw_reset(struct sdhci_host *host)
{
 struct sdhci_pci_slot *slot = sdhci_priv(host);

 if (slot->hw_reset)
  slot->hw_reset(host);
}
