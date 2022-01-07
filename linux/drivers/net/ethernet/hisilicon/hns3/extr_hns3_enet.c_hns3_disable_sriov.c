
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int dev_warn (int *,char*) ;
 int pci_disable_sriov (struct pci_dev*) ;
 scalar_t__ pci_vfs_assigned (struct pci_dev*) ;

__attribute__((used)) static void hns3_disable_sriov(struct pci_dev *pdev)
{




 if (pci_vfs_assigned(pdev)) {
  dev_warn(&pdev->dev,
    "disabling driver while VFs are assigned\n");
  return;
 }

 pci_disable_sriov(pdev);
}
