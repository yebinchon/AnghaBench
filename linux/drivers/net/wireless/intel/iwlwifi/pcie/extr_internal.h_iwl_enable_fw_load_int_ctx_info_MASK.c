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
struct iwl_trans_pcie {int inta_mask; int /*<<< orphan*/  fh_init_mask; int /*<<< orphan*/  msix_enabled; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int CSR_INT_BIT_ALIVE ; 
 int CSR_INT_BIT_FH_RX ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  MSIX_HW_INT_CAUSES_REG_ALIVE ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	FUNC0(trans, "Enabling ALIVE interrupt only\n");

	if (!trans_pcie->msix_enabled) {
		/*
		 * When we'll receive the ALIVE interrupt, the ISR will call
		 * iwl_enable_fw_load_int_ctx_info again to set the ALIVE
		 * interrupt (which is not really needed anymore) but also the
		 * RX interrupt which will allow us to receive the ALIVE
		 * notification (which is Rx) and continue the flow.
		 */
		trans_pcie->inta_mask =  CSR_INT_BIT_ALIVE | CSR_INT_BIT_FH_RX;
		FUNC4(trans, CSR_INT_MASK, trans_pcie->inta_mask);
	} else {
		FUNC3(trans,
					   MSIX_HW_INT_CAUSES_REG_ALIVE);
		/*
		 * Leave all the FH causes enabled to get the ALIVE
		 * notification.
		 */
		FUNC2(trans, trans_pcie->fh_init_mask);
	}
}