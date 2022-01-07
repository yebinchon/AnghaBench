
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_chip {int num_slots; } ;



__attribute__((used)) static int mrst_hc_probe(struct sdhci_pci_chip *chip)
{




 chip->num_slots = 1;
 return 0;
}
