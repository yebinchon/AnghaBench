
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_params {int speed; int width; } ;
struct adapter {int pdev; } ;


 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_CLS ;
 int PCI_EXP_LNKSTA_NLW ;
 scalar_t__ pci_is_pcie (int ) ;
 int pcie_capability_read_word (int ,int ,int*) ;

__attribute__((used)) static void get_pci_mode(struct adapter *adapter, struct pci_params *p)
{
 u16 val;

 if (pci_is_pcie(adapter->pdev)) {
  pcie_capability_read_word(adapter->pdev, PCI_EXP_LNKSTA, &val);
  p->speed = val & PCI_EXP_LNKSTA_CLS;
  p->width = (val & PCI_EXP_LNKSTA_NLW) >> 4;
 }
}
