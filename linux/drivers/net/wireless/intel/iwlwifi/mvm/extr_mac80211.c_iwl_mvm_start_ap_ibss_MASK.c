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
struct iwl_mvm_vif {int ap_ibss_active; int /*<<< orphan*/  id; struct ieee80211_key_conf** ap_early_keys; scalar_t__ ap_assoc_sta_count; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; scalar_t__ p2p_device_vif; TYPE_1__* fw; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_key_conf**) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_STA_TYPE ; 
 int /*<<< orphan*/  LOW_LATENCY_VIF_TYPE ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  SET_KEY ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ,struct ieee80211_vif*,int /*<<< orphan*/ *,struct ieee80211_key_conf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC9 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC14 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC17 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_mvm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC20 (struct iwl_mvm*) ; 
 int FUNC21 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC22 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC23 (struct iwl_mvm_vif*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct iwl_mvm_vif *mvmvif = FUNC22(vif);
	int ret, i;

	FUNC24(&mvm->mutex);

	/* Send the beacon template */
	ret = FUNC10(mvm, vif);
	if (ret)
		goto out_unlock;

	/*
	 * Re-calculate the tsf id, as the master-slave relations depend on the
	 * beacon interval, which was not known when the AP interface was added.
	 */
	if (vif->type == NL80211_IFTYPE_AP)
		FUNC12(mvm, vif);

	mvmvif->ap_assoc_sta_count = 0;

	/* Add the mac context */
	ret = FUNC9(mvm, vif);
	if (ret)
		goto out_unlock;

	/* Perform the binding */
	ret = FUNC5(mvm, vif);
	if (ret)
		goto out_remove;

	/*
	 * This is not very nice, but the simplest:
	 * For older FWs adding the mcast sta before the bcast station may
	 * cause assert 0x2b00.
	 * This is fixed in later FW so make the order of removal depend on
	 * the TLV
	 */
	if (FUNC3(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE)) {
		ret = FUNC4(mvm, vif);
		if (ret)
			goto out_unbind;
		/*
		 * Send the bcast station. At this stage the TBTT and DTIM time
		 * events are added and applied to the scheduler
		 */
		ret = FUNC17(mvm, vif);
		if (ret) {
			FUNC16(mvm, vif);
			goto out_unbind;
		}
	} else {
		/*
		 * Send the bcast station. At this stage the TBTT and DTIM time
		 * events are added and applied to the scheduler
		 */
		ret = FUNC17(mvm, vif);
		if (ret)
			goto out_unbind;
		ret = FUNC4(mvm, vif);
		if (ret) {
			FUNC19(mvm, vif);
			goto out_unbind;
		}
	}

	/* must be set before quota calculations */
	mvmvif->ap_ibss_active = true;

	/* send all the early keys to the device now */
	for (i = 0; i < FUNC0(mvmvif->ap_early_keys); i++) {
		struct ieee80211_key_conf *key = mvmvif->ap_early_keys[i];

		if (!key)
			continue;

		mvmvif->ap_early_keys[i] = NULL;

		ret = FUNC2(hw, SET_KEY, vif, NULL, key);
		if (ret)
			goto out_quota_failed;
	}

	if (vif->type == NL80211_IFTYPE_AP && !vif->p2p) {
		FUNC23(mvmvif, true,
					    LOW_LATENCY_VIF_TYPE);
		FUNC18(mvm, true, mvmvif->id);
	}

	/* power updated needs to be done before quotas */
	FUNC15(mvm);

	ret = FUNC21(mvm, false, NULL);
	if (ret)
		goto out_quota_failed;

	/* Need to update the P2P Device MAC (only GO, IBSS is single vif) */
	if (vif->p2p && mvm->p2p_device_vif)
		FUNC11(mvm, mvm->p2p_device_vif, false, NULL);

	FUNC7(mvm);

	/* we don't support TDLS during DCM */
	if (FUNC14(mvm) > 1)
		FUNC20(mvm);

	FUNC8(mvm, vif);

	goto out_unlock;

out_quota_failed:
	FUNC15(mvm);
	mvmvif->ap_ibss_active = false;
	FUNC19(mvm, vif);
	FUNC16(mvm, vif);
out_unbind:
	FUNC6(mvm, vif);
out_remove:
	FUNC13(mvm, vif);
out_unlock:
	FUNC25(&mvm->mutex);
	return ret;
}