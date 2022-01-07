
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int CONFIG_PCIEASPM ;
 scalar_t__ IS_ENABLED (int ) ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPMC ;
 int PCI_EXP_LNKCTL_ASPM_L0S ;
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int dev_info (int *,char*,char*,char*) ;
 int pci_disable_link_state (struct pci_dev*,int) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

void mt76_pci_disable_aspm(struct pci_dev *pdev)
{
 struct pci_dev *parent = pdev->bus->self;
 u16 aspm_conf, parent_aspm_conf = 0;

 pcie_capability_read_word(pdev, PCI_EXP_LNKCTL, &aspm_conf);
 aspm_conf &= PCI_EXP_LNKCTL_ASPMC;
 if (parent) {
  pcie_capability_read_word(parent, PCI_EXP_LNKCTL,
       &parent_aspm_conf);
  parent_aspm_conf &= PCI_EXP_LNKCTL_ASPMC;
 }

 if (!aspm_conf && (!parent || !parent_aspm_conf)) {

  return;
 }

 dev_info(&pdev->dev, "disabling ASPM %s %s\n",
   (aspm_conf & PCI_EXP_LNKCTL_ASPM_L0S) ? "L0s" : "",
   (aspm_conf & PCI_EXP_LNKCTL_ASPM_L1) ? "L1" : "");

 if (IS_ENABLED(CONFIG_PCIEASPM)) {
  int err;

  err = pci_disable_link_state(pdev, aspm_conf);
  if (!err)
   return;
 }




 pcie_capability_clear_word(pdev, PCI_EXP_LNKCTL, aspm_conf);
 if (parent)
  pcie_capability_clear_word(parent, PCI_EXP_LNKCTL,
        aspm_conf);
}
