
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct pch_phub_reg {int pch_phub_base_address; } ;
struct TYPE_4__ {int attr; } ;


 TYPE_2__ dev_attr_pch_mac ;
 int kfree (struct pch_phub_reg*) ;
 int pch_bin_attr ;
 int pci_disable_device (struct pci_dev*) ;
 struct pch_phub_reg* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int sysfs_remove_bin_file (int *,int *) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static void pch_phub_remove(struct pci_dev *pdev)
{
 struct pch_phub_reg *chip = pci_get_drvdata(pdev);

 sysfs_remove_file(&pdev->dev.kobj, &dev_attr_pch_mac.attr);
 sysfs_remove_bin_file(&pdev->dev.kobj, &pch_bin_attr);
 pci_iounmap(pdev, chip->pch_phub_base_address);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 kfree(chip);
}
