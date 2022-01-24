#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;
struct TYPE_4__ {TYPE_1__ dump; } ;
struct iwl_mvm {int ps_disabled; int rfkill_safe_init_done; int monitor_on; TYPE_2__ fwrt; scalar_t__ rx_ba_sessions; scalar_t__ vif_count; int /*<<< orphan*/  hw; int /*<<< orphan*/  last_bt_ci_cmd; int /*<<< orphan*/  last_bt_notif; int /*<<< orphan*/ * fw_key_table; int /*<<< orphan*/ * p2p_device_vif; scalar_t__ scan_status; scalar_t__ cur_aid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DBG_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  iwl_mvm_cleanup_iterator ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct iwl_mvm *mvm)
{
	FUNC7(mvm);

	mvm->cur_aid = 0;

	mvm->scan_status = 0;
	mvm->ps_disabled = false;
	mvm->rfkill_safe_init_done = false;

	/* just in case one was running */
	FUNC4(mvm);
	FUNC1(mvm->hw);

	FUNC5(mvm);

	/*
	 * cleanup all interfaces, even inactive ones, as some might have
	 * gone down during the HW restart
	 */
	FUNC0(mvm->hw, 0, iwl_mvm_cleanup_iterator, mvm);

	mvm->p2p_device_vif = NULL;

	FUNC6(mvm);
	FUNC8(mvm->fw_key_table, 0, sizeof(mvm->fw_key_table));
	FUNC8(&mvm->last_bt_notif, 0, sizeof(mvm->last_bt_notif));
	FUNC8(&mvm->last_bt_ci_cmd, 0, sizeof(mvm->last_bt_ci_cmd));

	FUNC2(mvm->hw);

	mvm->vif_count = 0;
	mvm->rx_ba_sessions = 0;
	mvm->fwrt.dump.conf = FW_DBG_INVALID;
	mvm->monitor_on = false;

	/* keep statistics ticking */
	FUNC3(mvm);
}