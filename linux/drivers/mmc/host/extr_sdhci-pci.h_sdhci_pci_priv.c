
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_slot {scalar_t__ private; } ;



__attribute__((used)) static inline void *sdhci_pci_priv(struct sdhci_pci_slot *slot)
{
 return (void *)slot->private;
}
