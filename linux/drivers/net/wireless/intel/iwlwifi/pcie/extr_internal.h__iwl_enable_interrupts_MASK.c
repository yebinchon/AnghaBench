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
struct iwl_trans_pcie {int /*<<< orphan*/  hw_mask; int /*<<< orphan*/  fh_mask; int /*<<< orphan*/  fh_init_mask; int /*<<< orphan*/  hw_init_mask; int /*<<< orphan*/  inta_mask; int /*<<< orphan*/  msix_enabled; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INI_SET_MASK ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  CSR_MSIX_FH_INT_MASK_AD ; 
 int /*<<< orphan*/  CSR_MSIX_HW_INT_MASK_AD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	FUNC0(trans, "Enabling interrupts\n");
	FUNC3(STATUS_INT_ENABLED, &trans->status);
	if (!trans_pcie->msix_enabled) {
		trans_pcie->inta_mask = CSR_INI_SET_MASK;
		FUNC2(trans, CSR_INT_MASK, trans_pcie->inta_mask);
	} else {
		/*
		 * fh/hw_mask keeps all the unmasked causes.
		 * Unlike msi, in msix cause is enabled when it is unset.
		 */
		trans_pcie->hw_mask = trans_pcie->hw_init_mask;
		trans_pcie->fh_mask = trans_pcie->fh_init_mask;
		FUNC2(trans, CSR_MSIX_FH_INT_MASK_AD,
			    ~trans_pcie->fh_mask);
		FUNC2(trans, CSR_MSIX_HW_INT_MASK_AD,
			    ~trans_pcie->hw_mask);
	}
}