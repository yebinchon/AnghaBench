
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans_pcie {int pci_dev; } ;
struct iwl_trans {int pm_support; int ltr_enabled; } ;


 int CSR_GIO_REG ;
 int CSR_GIO_REG_VAL_L0S_ENABLED ;
 int IWL_DEBUG_POWER (struct iwl_trans*,char*,char*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int PCI_EXP_DEVCTL2 ;
 int PCI_EXP_DEVCTL2_LTR_EN ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPM_L0S ;
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int pcie_capability_read_word (int ,int ,int*) ;

void iwl_pcie_apm_config(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 u16 lctl;
 u16 cap;
 pcie_capability_read_word(trans_pcie->pci_dev, PCI_EXP_LNKCTL, &lctl);
 if (lctl & PCI_EXP_LNKCTL_ASPM_L1)
  iwl_set_bit(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
 else
  iwl_clear_bit(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
 trans->pm_support = !(lctl & PCI_EXP_LNKCTL_ASPM_L0S);

 pcie_capability_read_word(trans_pcie->pci_dev, PCI_EXP_DEVCTL2, &cap);
 trans->ltr_enabled = cap & PCI_EXP_DEVCTL2_LTR_EN;
 IWL_DEBUG_POWER(trans, "L1 %sabled - LTR %sabled\n",
   (lctl & PCI_EXP_LNKCTL_ASPM_L1) ? "En" : "Dis",
   trans->ltr_enabled ? "En" : "Dis");
}
