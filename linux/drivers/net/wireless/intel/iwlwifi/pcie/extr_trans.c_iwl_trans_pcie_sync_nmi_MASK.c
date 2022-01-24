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
typedef  int u32 ;
struct iwl_trans_pcie {scalar_t__ msix_enabled; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CSR_INT ; 
 int CSR_INT_BIT_SW_ERR ; 
 int CSR_MSIX_HW_INT_CAUSES_AD ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 unsigned long IWL_TRANS_NMI_TIMEOUT ; 
 int MSIX_HW_INT_CAUSES_REG_SW_ERR ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 

void FUNC10(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	unsigned long timeout = jiffies + IWL_TRANS_NMI_TIMEOUT;
	bool interrupts_enabled = FUNC8(STATUS_INT_ENABLED, &trans->status);
	u32 inta_addr, sw_err_bit;

	if (trans_pcie->msix_enabled) {
		inta_addr = CSR_MSIX_HW_INT_CAUSES_AD;
		sw_err_bit = MSIX_HW_INT_CAUSES_REG_SW_ERR;
	} else {
		inta_addr = CSR_INT;
		sw_err_bit = CSR_INT_BIT_SW_ERR;
	}

	/* if the interrupts were already disabled, there is no point in
	 * calling iwl_disable_interrupts
	 */
	if (interrupts_enabled)
		FUNC1(trans);

	FUNC3(trans);
	while (FUNC9(timeout, jiffies)) {
		u32 inta_hw = FUNC4(trans, inta_addr);

		/* Error detected by uCode */
		if (inta_hw & sw_err_bit) {
			/* Clear causes register */
			FUNC6(trans, inta_addr, inta_hw & sw_err_bit);
			break;
		}

		FUNC7(1);
	}

	/* enable interrupts only if there were already enabled before this
	 * function to avoid a case were the driver enable interrupts before
	 * proper configurations were made
	 */
	if (interrupts_enabled)
		FUNC2(trans);

	FUNC5(trans);
}