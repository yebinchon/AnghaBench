
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ PCI_ERR_UNCOR_MASK ;
 int PCI_ERR_UNC_COMP_ABORT ;
 int PCI_EXT_CAP_ID_ERR ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int ) ;

__attribute__((used)) static void fm10k_mask_aer_comp_abort(struct pci_dev *pdev)
{
 u32 err_mask;
 int pos;

 pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_ERR);
 if (!pos)
  return;







 pci_read_config_dword(pdev, pos + PCI_ERR_UNCOR_MASK, &err_mask);
 err_mask |= PCI_ERR_UNC_COMP_ABORT;
 pci_write_config_dword(pdev, pos + PCI_ERR_UNCOR_MASK, err_mask);
}
