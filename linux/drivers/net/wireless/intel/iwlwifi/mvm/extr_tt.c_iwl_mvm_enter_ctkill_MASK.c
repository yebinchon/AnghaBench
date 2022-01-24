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
typedef  int u32 ;
struct TYPE_2__ {int ct_kill_duration; } ;
struct iwl_mvm_tt_mgmt {int throttle; int dynamic_smps; int /*<<< orphan*/  ct_kill_exit; TYPE_1__ params; } ;
struct iwl_mvm {int /*<<< orphan*/  temperature_test; int /*<<< orphan*/  status; struct iwl_mvm_tt_mgmt thermal_throttle; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_CTKILL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct iwl_mvm *mvm)
{
	struct iwl_mvm_tt_mgmt *tt = &mvm->thermal_throttle;
	u32 duration = tt->params.ct_kill_duration;

	if (FUNC5(IWL_MVM_STATUS_HW_CTKILL, &mvm->status))
		return;

	FUNC0(mvm, "Enter CT Kill\n");
	FUNC2(mvm, true);

	if (!FUNC1(mvm)) {
		tt->throttle = false;
		tt->dynamic_smps = false;
	}

	/* Don't schedule an exit work if we're in test mode, since
	 * the temperature will not change unless we manually set it
	 * again (or disable testing).
	 */
	if (!mvm->temperature_test)
		FUNC4(&tt->ct_kill_exit,
				      FUNC3(duration * HZ));
}