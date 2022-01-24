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
struct iwl_probe_resp_data {int dummy; } ;
struct iwl_mvm_vif {size_t id; int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  mcast_sta; int /*<<< orphan*/  probe_resp_data; } ;
struct iwl_mvm {int monitor_on; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * vif_id_to_mac; scalar_t__ vif_count; int /*<<< orphan*/ * p2p_device_vif; scalar_t__ noa_duration; struct ieee80211_vif* noa_vif; int /*<<< orphan*/  ftm_resp_stats; struct iwl_mvm_vif* bf_allowed_vif; } ;
struct TYPE_2__ {scalar_t__ ftm_responder; } ;
struct ieee80211_vif {scalar_t__ type; int driver_flags; TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int IEEE80211_VIF_BEACON_FILTER ; 
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC12 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_probe_resp_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct iwl_probe_resp_data* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

__attribute__((used)) static void FUNC19(struct ieee80211_hw *hw,
					 struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC12(vif);
	struct iwl_probe_resp_data *probe_data;

	FUNC8(mvm, vif);

	if (!(vif->type == NL80211_IFTYPE_AP ||
	      vif->type == NL80211_IFTYPE_ADHOC))
		FUNC10(mvm, vif);

	FUNC16(&mvm->mutex);

	probe_data = FUNC18(mvmvif->probe_resp_data,
					       FUNC14(&mvm->mutex));
	FUNC1(mvmvif->probe_resp_data, NULL);
	if (probe_data)
		FUNC13(probe_data, rcu_head);

	if (mvm->bf_allowed_vif == mvmvif) {
		mvm->bf_allowed_vif = NULL;
		vif->driver_flags &= ~(IEEE80211_VIF_BEACON_FILTER |
				       IEEE80211_VIF_SUPPORTS_CQM_RSSI);
	}

	if (vif->bss_conf.ftm_responder)
		FUNC15(&mvm->ftm_resp_stats, 0, sizeof(mvm->ftm_resp_stats));

	FUNC11(mvm, vif);

	/*
	 * For AP/GO interface, the tear down of the resources allocated to the
	 * interface is be handled as part of the stop_ap flow.
	 */
	if (vif->type == NL80211_IFTYPE_AP ||
	    vif->type == NL80211_IFTYPE_ADHOC) {
#ifdef CONFIG_NL80211_TESTMODE
		if (vif == mvm->noa_vif) {
			mvm->noa_vif = NULL;
			mvm->noa_duration = 0;
		}
#endif
		FUNC4(mvm, &mvmvif->mcast_sta);
		FUNC3(mvm, vif);
		goto out_release;
	}

	if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
		mvm->p2p_device_vif = NULL;
		FUNC9(mvm, vif);
		FUNC2(mvm, vif);
		FUNC6(mvm, mvmvif->phy_ctxt);
		mvmvif->phy_ctxt = NULL;
	}

	if (mvm->vif_count && vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvm->vif_count--;

	FUNC7(mvm);
	FUNC5(mvm, vif);

	FUNC1(mvm->vif_id_to_mac[mvmvif->id], NULL);

	if (vif->type == NL80211_IFTYPE_MONITOR)
		mvm->monitor_on = false;

out_release:
	FUNC17(&mvm->mutex);
}