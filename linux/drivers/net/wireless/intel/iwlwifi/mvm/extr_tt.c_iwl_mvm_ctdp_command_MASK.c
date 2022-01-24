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
typedef  size_t u32 ;
struct iwl_mvm_ctdp_cmd {int /*<<< orphan*/  window_size; int /*<<< orphan*/  budget; int /*<<< orphan*/  operation; } ;
struct TYPE_2__ {size_t cur_state; } ;
struct iwl_mvm {TYPE_1__ cooling_dev; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
#define  CTDP_CMD_OPERATION_REPORT 130 
#define  CTDP_CMD_OPERATION_START 129 
#define  CTDP_CMD_OPERATION_STOP 128 
 int /*<<< orphan*/  CTDP_CONFIG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  PHY_OPS_GROUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 size_t* iwl_mvm_cdev_budgets ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int,struct iwl_mvm_ctdp_cmd*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct iwl_mvm *mvm, u32 op, u32 state)
{
	struct iwl_mvm_ctdp_cmd cmd = {
		.operation = FUNC3(op),
		.budget = FUNC3(iwl_mvm_cdev_budgets[state]),
		.window_size = 0,
	};
	int ret;
	u32 status;

	FUNC5(&mvm->mutex);

	status = 0;
	ret = FUNC4(mvm, FUNC2(PHY_OPS_GROUP,
						       CTDP_CONFIG_CMD),
					  sizeof(cmd), &cmd, &status);

	if (ret) {
		FUNC1(mvm, "cTDP command failed (err=%d)\n", ret);
		return ret;
	}

	switch (op) {
	case CTDP_CMD_OPERATION_START:
#ifdef CONFIG_THERMAL
		mvm->cooling_dev.cur_state = state;
#endif /* CONFIG_THERMAL */
		break;
	case CTDP_CMD_OPERATION_REPORT:
		FUNC0(mvm, "cTDP avg energy in mWatt = %d\n", status);
		/* when the function is called with CTDP_CMD_OPERATION_REPORT
		 * option the function should return the average budget value
		 * that is received from the FW.
		 * The budget can't be less or equal to 0, so it's possible
		 * to distinguish between error values and budgets.
		 */
		return status;
	case CTDP_CMD_OPERATION_STOP:
		FUNC0(mvm, "cTDP stopped successfully\n");
		break;
	}

	return 0;
}