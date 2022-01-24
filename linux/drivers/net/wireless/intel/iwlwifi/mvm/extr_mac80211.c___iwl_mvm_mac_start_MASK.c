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
struct iwl_mvm {int /*<<< orphan*/  status; int /*<<< orphan*/  fwrt; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_FW_INI_TIME_POINT_PERIODIC ; 
 int /*<<< orphan*/  IWL_FW_INI_TIME_POINT_POST_INIT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RESTART_REQUESTED ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*) ; 
 int FUNC3 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct iwl_mvm *mvm)
{
	int ret;

	FUNC4(&mvm->mutex);

	if (FUNC6(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status)) {
		/*
		 * Now convert the HW_RESTART_REQUESTED flag to IN_HW_RESTART
		 * so later code will - from now on - see that we're doing it.
		 */
		FUNC5(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
		FUNC0(IWL_MVM_STATUS_HW_RESTART_REQUESTED, &mvm->status);
		/* Clean up some internal and mac80211 state on restart */
		FUNC2(mvm);
	}
	ret = FUNC3(mvm);

	FUNC1(&mvm->fwrt, IWL_FW_INI_TIME_POINT_POST_INIT,
			       NULL);
	FUNC1(&mvm->fwrt, IWL_FW_INI_TIME_POINT_PERIODIC,
			       NULL);

	if (ret && FUNC6(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
		/* Something went wrong - we need to finish some cleanup
		 * that normally iwl_mvm_mac_restart_complete() below
		 * would do.
		 */
		FUNC0(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
	}

	return ret;
}