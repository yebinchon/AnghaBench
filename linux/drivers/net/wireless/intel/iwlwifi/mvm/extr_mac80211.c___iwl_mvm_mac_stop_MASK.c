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
struct iwl_mvm {int max_scans; scalar_t__* scan_uid_status; TYPE_1__* fw; int /*<<< orphan*/  hw; int /*<<< orphan*/  status; int /*<<< orphan*/  roc_done_wk; int /*<<< orphan*/  accu_radio_stats; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RESTART_REQUESTED ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 scalar_t__ FUNC0 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  iwl_mvm_cleanup_iterator ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC10(struct iwl_mvm *mvm)
{
	FUNC7(&mvm->mutex);

	/* firmware counters are obviously reset now, but we shouldn't
	 * partially track so also clear the fw_reset_accu counters.
	 */
	FUNC8(&mvm->accu_radio_stats, 0, sizeof(mvm->accu_radio_stats));

	/* async_handlers_wk is now blocked */

	/*
	 * The work item could be running or queued if the
	 * ROC time event stops just as we get here.
	 */
	FUNC1(&mvm->roc_done_wk);

	FUNC6(mvm);

	FUNC4(mvm);
	/* async_handlers_list is empty and will stay empty: HW is stopped */

	/* the fw is stopped, the aux sta is dead: clean up driver state */
	FUNC5(mvm);

	/*
	 * Clear IN_HW_RESTART and HW_RESTART_REQUESTED flag when stopping the
	 * hw (as restart_complete() won't be called in this case) and mac80211
	 * won't execute the restart.
	 * But make sure to cleanup interfaces that have gone down before/during
	 * HW restart was requested.
	 */
	if (FUNC9(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) ||
	    FUNC9(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
			       &mvm->status))
		FUNC3(mvm->hw, 0,
					     iwl_mvm_cleanup_iterator, mvm);

	/* We shouldn't have any UIDs still set.  Loop over all the UIDs to
	 * make sure there's nothing left there and warn if any is found.
	 */
	if (FUNC2(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_UMAC_SCAN)) {
		int i;

		for (i = 0; i < mvm->max_scans; i++) {
			if (FUNC0(mvm->scan_uid_status[i],
				      "UMAC scan UID %d status was not cleaned\n",
				      i))
				mvm->scan_uid_status[i] = 0;
		}
	}
}