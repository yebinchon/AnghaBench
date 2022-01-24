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
struct iwl_trans_pcie {int shared_vec_mask; } ;
struct iwl_trans {int num_rx_queues; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CSR_MSIX_FH_INT_MASK_AD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IWL_SHARED_IRQ_FIRST_RSS ; 
 int IWL_SHARED_IRQ_NON_RX ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int FUNC3 (int) ; 
 int MSIX_NON_AUTO_CLEAR_CAUSE ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	u32 offset =
		trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS ? 1 : 0;
	u32 val, idx;

	/*
	 * The first RX queue - fallback queue, which is designated for
	 * management frame, command responses etc, is always mapped to the
	 * first interrupt vector. The other RX queues are mapped to
	 * the other (N - 2) interrupt vectors.
	 */
	val = FUNC0(FUNC3(0));
	for (idx = 1; idx < trans->num_rx_queues; idx++) {
		FUNC5(trans, FUNC1(idx),
			   FUNC3(idx - offset));
		val |= FUNC0(FUNC3(idx));
	}
	FUNC4(trans, CSR_MSIX_FH_INT_MASK_AD, ~val);

	val = FUNC3(0);
	if (trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_NON_RX)
		val |= MSIX_NON_AUTO_CLEAR_CAUSE;
	FUNC5(trans, FUNC1(0), val);

	if (trans_pcie->shared_vec_mask & IWL_SHARED_IRQ_FIRST_RSS)
		FUNC5(trans, FUNC1(1), val);
}