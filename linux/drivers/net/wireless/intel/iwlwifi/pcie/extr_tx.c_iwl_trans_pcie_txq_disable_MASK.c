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
typedef  scalar_t__ u32 ;
struct iwl_trans_pcie {TYPE_1__** txq; int /*<<< orphan*/  queue_used; scalar_t__ scd_base_addr; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int frozen; int ampdu; scalar_t__ frozen_expiry_remainder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct iwl_trans *trans, int txq_id,
				bool configure_scd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	u32 stts_addr = trans_pcie->scd_base_addr +
			FUNC3(txq_id);
	static const u32 zero_val[4] = {};

	trans_pcie->txq[txq_id]->frozen_expiry_remainder = 0;
	trans_pcie->txq[txq_id]->frozen = false;

	/*
	 * Upon HW Rfkill - we stop the device, and then stop the queues
	 * in the op_mode. Just for the sake of the simplicity of the op_mode,
	 * allow the op_mode to call txq_disable after it already called
	 * stop_device.
	 */
	if (!FUNC8(txq_id, trans_pcie->queue_used)) {
		FUNC4(FUNC9(STATUS_DEVICE_ENABLED, &trans->status),
			  "queue %d not used", txq_id);
		return;
	}

	if (configure_scd) {
		FUNC6(trans, txq_id);

		FUNC7(trans, stts_addr, (void *)zero_val,
				    FUNC0(zero_val));
	}

	FUNC5(trans, txq_id);
	trans_pcie->txq[txq_id]->ampdu = false;

	FUNC1(trans, "Deactivate queue %d\n", txq_id);
}