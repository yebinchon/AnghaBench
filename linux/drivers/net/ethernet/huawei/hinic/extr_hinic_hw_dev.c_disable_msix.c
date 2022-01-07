
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;


 int pci_disable_msix (struct pci_dev*) ;

__attribute__((used)) static void disable_msix(struct hinic_hwdev *hwdev)
{
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;

 pci_disable_msix(pdev);
}
