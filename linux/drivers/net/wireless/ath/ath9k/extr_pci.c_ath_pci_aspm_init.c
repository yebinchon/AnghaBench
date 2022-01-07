
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {TYPE_1__* bus; } ;
struct ath_softc {int dev; struct ath_hw* sc_ah; } ;
struct TYPE_4__ {int aspm_l1_fix; } ;
struct ath_hw {int aspm_enabled; TYPE_2__ config; int is_pciexpress; } ;
struct ath_common {scalar_t__ priv; } ;
struct TYPE_3__ {struct pci_dev* self; } ;


 scalar_t__ AR_SREV_9285 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462 (struct ath_hw*) ;
 scalar_t__ ATH_BTCOEX_CFG_NONE ;
 int PCI_EXP_LNKCTL ;
 int PCI_EXP_LNKCTL_ASPM_L0S ;
 int PCI_EXP_LNKCTL_ASPM_L1 ;
 int ath9k_hw_configpcipowersave (struct ath_hw*,int) ;
 scalar_t__ ath9k_hw_get_btcoex_scheme (struct ath_hw*) ;
 int ath_info (struct ath_common*,char*,...) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ath_pci_aspm_init(struct ath_common *common)
{
 struct ath_softc *sc = (struct ath_softc *) common->priv;
 struct ath_hw *ah = sc->sc_ah;
 struct pci_dev *pdev = to_pci_dev(sc->dev);
 struct pci_dev *parent;
 u16 aspm;

 if (!ah->is_pciexpress)
  return;

 parent = pdev->bus->self;
 if (!parent)
  return;

 if ((ath9k_hw_get_btcoex_scheme(ah) != ATH_BTCOEX_CFG_NONE) &&
     (AR_SREV_9285(ah))) {

  pcie_capability_clear_word(pdev, PCI_EXP_LNKCTL,
   PCI_EXP_LNKCTL_ASPM_L0S | PCI_EXP_LNKCTL_ASPM_L1);





  pcie_capability_clear_word(parent, PCI_EXP_LNKCTL,
   PCI_EXP_LNKCTL_ASPM_L0S | PCI_EXP_LNKCTL_ASPM_L1);

  ath_info(common, "Disabling ASPM since BTCOEX is enabled\n");
  return;
 }
 if (AR_SREV_9462(ah))
  pci_read_config_dword(pdev, 0x70c, &ah->config.aspm_l1_fix);

 pcie_capability_read_word(parent, PCI_EXP_LNKCTL, &aspm);
 if (aspm & (PCI_EXP_LNKCTL_ASPM_L0S | PCI_EXP_LNKCTL_ASPM_L1)) {
  ah->aspm_enabled = 1;

  ath9k_hw_configpcipowersave(ah, 0);
  ath_info(common, "ASPM enabled: 0x%x\n", aspm);
 }
}
