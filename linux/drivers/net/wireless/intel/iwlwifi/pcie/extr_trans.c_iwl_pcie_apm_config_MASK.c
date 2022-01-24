#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct iwl_trans_pcie {int /*<<< orphan*/  pci_dev; } ;
struct iwl_trans {int pm_support; int ltr_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GIO_REG ; 
 int /*<<< orphan*/  CSR_GIO_REG_VAL_L0S_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,char*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int PCI_EXP_DEVCTL2_LTR_EN ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_ASPM_L0S ; 
 int PCI_EXP_LNKCTL_ASPM_L1 ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

void FUNC5(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	u16 lctl;
	u16 cap;

	/*
	 * HW bug W/A for instability in PCIe bus L0S->L1 transition.
	 * Check if BIOS (or OS) enabled L1-ASPM on this device.
	 * If so (likely), disable L0S, so device moves directly L0->L1;
	 *    costs negligible amount of power savings.
	 * If not (unlikely), enable L0S, so there is at least some
	 *    power savings, even without L1.
	 */
	FUNC4(trans_pcie->pci_dev, PCI_EXP_LNKCTL, &lctl);
	if (lctl & PCI_EXP_LNKCTL_ASPM_L1)
		FUNC3(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
	else
		FUNC2(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
	trans->pm_support = !(lctl & PCI_EXP_LNKCTL_ASPM_L0S);

	FUNC4(trans_pcie->pci_dev, PCI_EXP_DEVCTL2, &cap);
	trans->ltr_enabled = cap & PCI_EXP_DEVCTL2_LTR_EN;
	FUNC0(trans, "L1 %sabled - LTR %sabled\n",
			(lctl & PCI_EXP_LNKCTL_ASPM_L1) ? "En" : "Dis",
			trans->ltr_enabled ? "En" : "Dis");
}