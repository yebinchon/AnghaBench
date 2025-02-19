
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_chip {int num_slots; int * slots; scalar_t__ allow_runtime_pm; } ;
struct pci_dev {int dev; } ;


 struct sdhci_pci_chip* pci_get_drvdata (struct pci_dev*) ;
 int sdhci_pci_remove_slot (int ) ;
 int sdhci_pci_runtime_pm_forbid (int *) ;

__attribute__((used)) static void sdhci_pci_remove(struct pci_dev *pdev)
{
 int i;
 struct sdhci_pci_chip *chip = pci_get_drvdata(pdev);

 if (chip->allow_runtime_pm)
  sdhci_pci_runtime_pm_forbid(&pdev->dev);

 for (i = 0; i < chip->num_slots; i++)
  sdhci_pci_remove_slot(chip->slots[i]);
}
