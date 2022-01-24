#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct iwl_txq {int id; int need_update; int write_ptr; int /*<<< orphan*/  block; int /*<<< orphan*/  lock; } ;
struct iwl_trans_pcie {int cmd_queue; } ;
struct iwl_trans {TYPE_3__* trans_cfg; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__* csr; TYPE_1__* base_params; } ;
struct TYPE_5__ {int /*<<< orphan*/  flag_mac_access_req; } ;
struct TYPE_4__ {int /*<<< orphan*/  shadow_reg_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1 ; 
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ; 
 int /*<<< orphan*/  HBUS_TARG_WRPTR ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,int) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_TPOWER_PMI ; 
 int FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct iwl_trans *trans,
				    struct iwl_txq *txq)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	u32 reg = 0;
	int txq_id = txq->id;

	FUNC7(&txq->lock);

	/*
	 * explicitly wake up the NIC if:
	 * 1. shadow registers aren't enabled
	 * 2. NIC is woken up for CMD regardless of shadow outside this function
	 * 3. there is a chance that the NIC is asleep
	 */
	if (!trans->trans_cfg->base_params->shadow_reg_enable &&
	    txq_id != trans_pcie->cmd_queue &&
	    FUNC8(STATUS_TPOWER_PMI, &trans->status)) {
		/*
		 * wake up nic if it's powered down ...
		 * uCode will wake up, and interrupt us again, so next
		 * time we'll skip this part.
		 */
		reg = FUNC4(trans, CSR_UCODE_DRV_GP1);

		if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
			FUNC1(trans, "Tx queue %d requesting wakeup, GP1 = 0x%x\n",
				       txq_id, reg);
			FUNC5(trans, CSR_GP_CNTRL,
				    FUNC0(trans->trans_cfg->csr->flag_mac_access_req));
			txq->need_update = true;
			return;
		}
	}

	/*
	 * if not in power-save mode, uCode will never sleep when we're
	 * trying to tx (during RFKILL, we're not trying to tx).
	 */
	FUNC2(trans, "Q:%d WR: 0x%x\n", txq_id, txq->write_ptr);
	if (!txq->block)
		FUNC6(trans, HBUS_TARG_WRPTR,
			    txq->write_ptr | (txq_id << 8));
}