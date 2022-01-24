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
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  notif_wait; int /*<<< orphan*/  status; int /*<<< orphan*/  rfkill_safe_init_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RFKILL ; 
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct iwl_op_mode *op_mode, bool state)
{
	struct iwl_mvm *mvm = FUNC0(op_mode);
	bool rfkill_safe_init_done = FUNC1(mvm->rfkill_safe_init_done);
	bool unified = FUNC4(mvm);

	if (state)
		FUNC6(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);
	else
		FUNC2(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);

	FUNC5(mvm);

	 /* iwl_run_init_mvm_ucode is waiting for results, abort it. */
	if (rfkill_safe_init_done)
		FUNC3(&mvm->notif_wait);

	/*
	 * Don't ask the transport to stop the firmware. We'll do it
	 * after cfg80211 takes us down.
	 */
	if (unified)
		return false;

	/*
	 * Stop the device if we run OPERATIONAL firmware or if we are in the
	 * middle of the calibrations.
	 */
	return state && rfkill_safe_init_done;
}