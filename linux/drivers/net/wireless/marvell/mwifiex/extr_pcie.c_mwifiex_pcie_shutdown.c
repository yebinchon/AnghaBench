
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int mwifiex_pcie_remove (struct pci_dev*) ;

__attribute__((used)) static void mwifiex_pcie_shutdown(struct pci_dev *pdev)
{
 mwifiex_pcie_remove(pdev);

 return;
}
