#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  fh_init_mask; int /*<<< orphan*/  inta_mask; int /*<<< orphan*/  msix_enabled; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN ; 
 int /*<<< orphan*/  CSR_INT_BIT_RF_KILL ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  CSR_MSIX_FH_INT_MASK_AD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_9000 ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  MSIX_HW_INT_CAUSES_REG_RF_KILL ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	FUNC0(trans, "Enabling rfkill interrupt\n");
	if (!trans_pcie->msix_enabled) {
		trans_pcie->inta_mask = CSR_INT_BIT_RF_KILL;
		FUNC4(trans, CSR_INT_MASK, trans_pcie->inta_mask);
	} else {
		FUNC4(trans, CSR_MSIX_FH_INT_MASK_AD,
			    trans_pcie->fh_init_mask);
		FUNC2(trans,
					   MSIX_HW_INT_CAUSES_REG_RF_KILL);
	}

	if (trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_9000) {
		/*
		 * On 9000-series devices this bit isn't enabled by default, so
		 * when we power down the device we need set the bit to allow it
		 * to wake up the PCI-E bus for RF-kill interrupts.
		 */
		FUNC3(trans, CSR_GP_CNTRL,
			    CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN);
	}
}