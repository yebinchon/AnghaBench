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
struct TYPE_2__ {scalar_t__ num_beacons; int /*<<< orphan*/  accu_num_beacons; } ;
struct iwl_mvm_vif {size_t id; int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  csa_work; int /*<<< orphan*/  features; int /*<<< orphan*/  mcast_sta; TYPE_1__ beacon_stats; int /*<<< orphan*/  probe_resp_data; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int monitor_on; int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif_count; struct iwl_mvm_vif* bf_allowed_vif; struct ieee80211_vif* p2p_device_vif; int /*<<< orphan*/ * vif_id_to_mac; int /*<<< orphan*/  status; } ;
struct ieee80211_vif {int driver_flags; int /*<<< orphan*/  type; int /*<<< orphan*/  p2p; } ;
struct ieee80211_hw {int /*<<< orphan*/  netdev_features; } ;

/* Variables and functions */
 int ENOSPC ; 
 int IEEE80211_VIF_BEACON_FILTER ; 
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  IWL_STA_MULTICAST ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  iwl_mvm_channel_switch_disconnect_wk ; 
 int FUNC9 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct iwl_mvm*) ; 
 int FUNC11 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC12 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC19 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_vif *mvmvif = FUNC19(vif);
	int ret;

	mvmvif->mvm = mvm;
	FUNC3(mvmvif->probe_resp_data, NULL);

	/*
	 * Not much to do here. The stack will not allow interface
	 * types or combinations that we didn't advertise, so we
	 * don't really have to check the types.
	 */

	FUNC20(&mvm->mutex);

	/* make sure that beacon statistics don't go backwards with FW reset */
	if (FUNC23(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
		mvmvif->beacon_stats.accu_num_beacons +=
			mvmvif->beacon_stats.num_beacons;

	/* Allocate resources for the MAC context, and add it to the fw  */
	ret = FUNC12(mvm, vif);
	if (ret)
		goto out_unlock;

	FUNC22(mvm->vif_id_to_mac[mvmvif->id], vif);

	/* Counting number of interfaces is needed for legacy PM */
	if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvm->vif_count++;

	/*
	 * The AP binding flow can be done only after the beacon
	 * template is configured (which happens only in the mac80211
	 * start_ap() flow), and adding the broadcast station can happen
	 * only after the binding.
	 * In addition, since modifying the MAC before adding a bcast
	 * station is not allowed by the FW, delay the adding of MAC context to
	 * the point where we can also add the bcast station.
	 * In short: there's not much we can do at this point, other than
	 * allocating resources :)
	 */
	if (vif->type == NL80211_IFTYPE_AP ||
	    vif->type == NL80211_IFTYPE_ADHOC) {
		ret = FUNC5(mvm, vif);
		if (ret) {
			FUNC1(mvm, "Failed to allocate bcast sta\n");
			goto out_release;
		}

		/*
		 * Only queue for this station is the mcast queue,
		 * which shouldn't be in TFD mask anyway
		 */
		ret = FUNC6(mvm, &mvmvif->mcast_sta,
					       0, vif->type,
					       IWL_STA_MULTICAST);
		if (ret)
			goto out_release;

		FUNC18(mvm, vif);
		goto out_unlock;
	}

	mvmvif->features |= hw->netdev_features;

	ret = FUNC11(mvm, vif);
	if (ret)
		goto out_release;

	ret = FUNC16(mvm);
	if (ret)
		goto out_remove_mac;

	/* beacon filtering */
	ret = FUNC9(mvm, vif, 0);
	if (ret)
		goto out_remove_mac;

	if (!mvm->bf_allowed_vif &&
	    vif->type == NL80211_IFTYPE_STATION && !vif->p2p) {
		mvm->bf_allowed_vif = mvmvif;
		vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
				     IEEE80211_VIF_SUPPORTS_CQM_RSSI;
	}

	/*
	 * P2P_DEVICE interface does not have a channel context assigned to it,
	 * so a dedicated PHY context is allocated to it and the corresponding
	 * MAC context is bound to it at this stage.
	 */
	if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {

		mvmvif->phy_ctxt = FUNC10(mvm);
		if (!mvmvif->phy_ctxt) {
			ret = -ENOSPC;
			goto out_free_bf;
		}

		FUNC14(mvm, mvmvif->phy_ctxt);
		ret = FUNC7(mvm, vif);
		if (ret)
			goto out_unref_phy;

		ret = FUNC4(mvm, vif);
		if (ret)
			goto out_unbind;

		/* Save a pointer to p2p device vif, so it can later be used to
		 * update the p2p device MAC when a GO is started/stopped */
		mvm->p2p_device_vif = vif;
	}

	FUNC17(mvm, vif);
	FUNC0(&mvmvif->csa_work,
			  iwl_mvm_channel_switch_disconnect_wk);

	if (vif->type == NL80211_IFTYPE_MONITOR)
		mvm->monitor_on = true;

	FUNC18(mvm, vif);
	goto out_unlock;

 out_unbind:
	FUNC8(mvm, vif);
 out_unref_phy:
	FUNC15(mvm, mvmvif->phy_ctxt);
 out_free_bf:
	if (mvm->bf_allowed_vif == mvmvif) {
		mvm->bf_allowed_vif = NULL;
		vif->driver_flags &= ~(IEEE80211_VIF_BEACON_FILTER |
				       IEEE80211_VIF_SUPPORTS_CQM_RSSI);
	}
 out_remove_mac:
	mvmvif->phy_ctxt = NULL;
	FUNC13(mvm, vif);
 out_release:
	if (vif->type != NL80211_IFTYPE_P2P_DEVICE)
		mvm->vif_count--;
 out_unlock:
	FUNC21(&mvm->mutex);

	return ret;
}