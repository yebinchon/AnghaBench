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
struct iwl_trans_pcie {int /*<<< orphan*/  queue_used; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct iwl_trans *trans, int queue)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	/*
	 * Upon HW Rfkill - we stop the device, and then stop the queues
	 * in the op_mode. Just for the sake of the simplicity of the op_mode,
	 * allow the op_mode to call txq_disable after it already called
	 * stop_device.
	 */
	if (!FUNC4(queue, trans_pcie->queue_used)) {
		FUNC2(FUNC5(STATUS_DEVICE_ENABLED, &trans->status),
			  "queue %d not used", queue);
		return;
	}

	FUNC3(trans, queue);

	FUNC0(trans, "Deactivate queue %d\n", queue);
}