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
struct TYPE_4__ {scalar_t__ sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ bcast_sta; TYPE_2__ mcast_sta; int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_sta {scalar_t__ mac_id_n_color; } ;
struct iwl_mvm {TYPE_1__* fw; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ieee80211_sta*) ; 
 scalar_t__ IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_STA_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct iwl_mvm_vif*,TYPE_2__*,int) ; 
 struct iwl_mvm_sta* FUNC5 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct iwl_mvm *mvm,
				       struct iwl_mvm_vif *mvmvif,
				       bool disable)
{
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvm_sta;
	int i;

	FUNC7(&mvm->mutex);

	/* Block/unblock all the stations of the given mvmvif */
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		sta = FUNC9(mvm->fw_id_to_mac_id[i],
						FUNC8(&mvm->mutex));
		if (FUNC2(sta))
			continue;

		mvm_sta = FUNC5(sta);
		if (mvm_sta->mac_id_n_color !=
		    FUNC1(mvmvif->id, mvmvif->color))
			continue;

		FUNC6(mvm, sta, disable);
	}

	if (!FUNC3(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
		return;

	/* Need to block/unblock also multicast station */
	if (mvmvif->mcast_sta.sta_id != IWL_MVM_INVALID_STA)
		FUNC4(mvm, mvmvif,
						  &mvmvif->mcast_sta, disable);

	/*
	 * Only unblock the broadcast station (FW blocks it for immediate
	 * quiet, not the driver)
	 */
	if (!disable && mvmvif->bcast_sta.sta_id != IWL_MVM_INVALID_STA)
		FUNC4(mvm, mvmvif,
						  &mvmvif->bcast_sta, disable);
}