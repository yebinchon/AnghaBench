
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hl_device {int * pcie_bar; struct pci_dev* pdev; } ;


 int iounmap (int ) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void hl_pci_bars_unmap(struct hl_device *hdev)
{
 struct pci_dev *pdev = hdev->pdev;
 int i, bar;

 for (i = 2 ; i >= 0 ; i--) {
  bar = i * 2;
  iounmap(hdev->pcie_bar[bar]);
 }

 pci_release_regions(pdev);
}
