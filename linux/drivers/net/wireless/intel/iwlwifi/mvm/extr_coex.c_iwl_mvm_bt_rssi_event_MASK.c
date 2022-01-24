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
struct iwl_mvm_vif {scalar_t__ ap_sta_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  bt_activity_grading; } ;
struct iwl_mvm {scalar_t__ bt_force_ant_mode; TYPE_3__* cfg; TYPE_1__ last_bt_notif; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
typedef  enum ieee80211_rssi_event_data { ____Placeholder_ieee80211_rssi_event_data } ieee80211_rssi_event_data ;
struct TYPE_6__ {scalar_t__ bt_shared_single_ant; } ;

/* Variables and functions */
 scalar_t__ BT_COEX_LOOSE_LUT ; 
 scalar_t__ BT_FORCE_ANT_DIS ; 
 scalar_t__ BT_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 scalar_t__ IWL_MVM_INVALID_STA ; 
 int RSSI_EVENT_HIGH ; 
 int RSSI_EVENT_LOW ; 
 scalar_t__ FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC3 (struct iwl_mvm*,scalar_t__,int) ; 
 struct iwl_mvm_vif* FUNC4 (struct ieee80211_vif*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			   enum ieee80211_rssi_event_data rssi_event)
{
	struct iwl_mvm_vif *mvmvif = FUNC4(vif);
	int ret;

	FUNC6(&mvm->mutex);

	/* Ignore updates if we are in force mode */
	if (FUNC7(mvm->bt_force_ant_mode != BT_FORCE_ANT_DIS))
		return;

	/*
	 * Rssi update while not associated - can happen since the statistics
	 * are handled asynchronously
	 */
	if (mvmvif->ap_sta_id == IWL_MVM_INVALID_STA)
		return;

	/* No BT - reports should be disabled */
	if (FUNC5(mvm->last_bt_notif.bt_activity_grading) == BT_OFF)
		return;

	FUNC0(mvm, "RSSI for %pM is now %s\n", vif->bss_conf.bssid,
		       rssi_event == RSSI_EVENT_HIGH ? "HIGH" : "LOW");

	/*
	 * Check if rssi is good enough for reduced Tx power, but not in loose
	 * scheme.
	 */
	if (rssi_event == RSSI_EVENT_LOW || mvm->cfg->bt_shared_single_ant ||
	    FUNC2(mvm, vif) == BT_COEX_LOOSE_LUT)
		ret = FUNC3(mvm, mvmvif->ap_sta_id,
						  false);
	else
		ret = FUNC3(mvm, mvmvif->ap_sta_id, true);

	if (ret)
		FUNC1(mvm, "couldn't send BT_CONFIG HCMD upon RSSI event\n");
}