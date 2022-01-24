#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_13__ {int ave_beacon_signal; } ;
struct iwl_mvm_vif {size_t id; int /*<<< orphan*/  ap_sta_id; TYPE_11__ bf_data; int /*<<< orphan*/  ap_ibss_active; TYPE_5__* phy_ctxt; } ;
struct TYPE_12__ {int rrc_status; int /*<<< orphan*/  bt_activity_grading; } ;
struct TYPE_19__ {int /*<<< orphan*/ * load; } ;
struct TYPE_20__ {TYPE_6__ result; } ;
struct iwl_mvm {TYPE_10__ last_bt_notif; TYPE_8__* cfg; TYPE_7__ tcm; TYPE_3__* fw; int /*<<< orphan*/  mutex; } ;
struct iwl_bt_iterator_data {int primary_ll; int /*<<< orphan*/  secondary_load; struct ieee80211_chanctx_conf* secondary; int /*<<< orphan*/  primary_load; struct ieee80211_chanctx_conf* primary; struct iwl_mvm* mvm; TYPE_4__* notif; } ;
struct TYPE_22__ {int /*<<< orphan*/  assoc; } ;
struct ieee80211_vif {int type; TYPE_9__ bss_conf; int /*<<< orphan*/  chanctx_conf; } ;
struct TYPE_15__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
typedef  enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;
struct TYPE_21__ {scalar_t__ bt_shared_single_ant; } ;
struct TYPE_18__ {int /*<<< orphan*/  id; } ;
struct TYPE_17__ {int /*<<< orphan*/  bt_activity_grading; } ;
struct TYPE_16__ {int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_14__ {scalar_t__ band; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BT_COEX_LOOSE_LUT ; 
 scalar_t__ BT_HIGH_TRAFFIC ; 
 scalar_t__ BT_LOW_TRAFFIC ; 
 scalar_t__ BT_OFF ; 
 scalar_t__ BT_VERY_HIGH_TRAFFIC ; 
 int IEEE80211_SMPS_AUTOMATIC ; 
 int IEEE80211_SMPS_DYNAMIC ; 
 int IEEE80211_SMPS_STATIC ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,size_t,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 int IWL_MVM_BT_COEX_DIS_RED_TXP_THRESH ; 
 int IWL_MVM_BT_COEX_EN_RED_TXP_THRESH ; 
 int /*<<< orphan*/  IWL_MVM_SMPS_REQ_BT_COEX ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2 ; 
 scalar_t__ NL80211_BAND_2GHZ ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 scalar_t__ FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ,int) ; 
 struct iwl_mvm_vif* FUNC8 (struct ieee80211_vif*) ; 
 scalar_t__ FUNC9 (struct iwl_mvm_vif*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct ieee80211_chanctx_conf* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void *_data, u8 *mac,
				      struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC8(vif);
	struct iwl_bt_iterator_data *data = _data;
	struct iwl_mvm *mvm = data->mvm;
	struct ieee80211_chanctx_conf *chanctx_conf;
	/* default smps_mode is AUTOMATIC - only used for client modes */
	enum ieee80211_smps_mode smps_mode = IEEE80211_SMPS_AUTOMATIC;
	u32 bt_activity_grading, min_ag_for_static_smps;
	int ave_rssi;

	FUNC11(&mvm->mutex);

	switch (vif->type) {
	case NL80211_IFTYPE_STATION:
		break;
	case NL80211_IFTYPE_AP:
		if (!mvmvif->ap_ibss_active)
			return;
		break;
	default:
		return;
	}

	chanctx_conf = FUNC12(vif->chanctx_conf);

	/* If channel context is invalid or not on 2.4GHz .. */
	if ((!chanctx_conf ||
	     chanctx_conf->def.chan->band != NL80211_BAND_2GHZ)) {
		if (vif->type == NL80211_IFTYPE_STATION) {
			/* ... relax constraints and disable rssi events */
			FUNC7(mvm, vif, IWL_MVM_SMPS_REQ_BT_COEX,
					    smps_mode);
			FUNC6(mvm, mvmvif->ap_sta_id,
						    false);
			FUNC5(mvm, vif, false, 0);
		}
		return;
	}

	if (FUNC3(&mvm->fw->ucode_capa, IWL_UCODE_TLV_CAPA_COEX_SCHEMA_2))
		min_ag_for_static_smps = BT_VERY_HIGH_TRAFFIC;
	else
		min_ag_for_static_smps = BT_HIGH_TRAFFIC;

	bt_activity_grading = FUNC10(data->notif->bt_activity_grading);
	if (bt_activity_grading >= min_ag_for_static_smps)
		smps_mode = IEEE80211_SMPS_STATIC;
	else if (bt_activity_grading >= BT_LOW_TRAFFIC)
		smps_mode = IEEE80211_SMPS_DYNAMIC;

	/* relax SMPS constraints for next association */
	if (!vif->bss_conf.assoc)
		smps_mode = IEEE80211_SMPS_AUTOMATIC;

	if (mvmvif->phy_ctxt &&
	    (mvm->last_bt_notif.rrc_status & FUNC0(mvmvif->phy_ctxt->id)))
		smps_mode = IEEE80211_SMPS_AUTOMATIC;

	FUNC1(data->mvm,
		       "mac %d: bt_activity_grading %d smps_req %d\n",
		       mvmvif->id, bt_activity_grading, smps_mode);

	if (vif->type == NL80211_IFTYPE_STATION)
		FUNC7(mvm, vif, IWL_MVM_SMPS_REQ_BT_COEX,
				    smps_mode);

	/* low latency is always primary */
	if (FUNC9(mvmvif)) {
		data->primary_ll = true;

		data->secondary = data->primary;
		data->primary = chanctx_conf;
	}

	if (vif->type == NL80211_IFTYPE_AP) {
		if (!mvmvif->ap_ibss_active)
			return;

		if (chanctx_conf == data->primary)
			return;

		if (!data->primary_ll) {
			/*
			 * downgrade the current primary no matter what its
			 * type is.
			 */
			data->secondary = data->primary;
			data->primary = chanctx_conf;
		} else {
			/* there is low latency vif - we will be secondary */
			data->secondary = chanctx_conf;
		}

		if (data->primary == chanctx_conf)
			data->primary_load = mvm->tcm.result.load[mvmvif->id];
		else if (data->secondary == chanctx_conf)
			data->secondary_load = mvm->tcm.result.load[mvmvif->id];
		return;
	}

	/*
	 * STA / P2P Client, try to be primary if first vif. If we are in low
	 * latency mode, we are already in primary and just don't do much
	 */
	if (!data->primary || data->primary == chanctx_conf)
		data->primary = chanctx_conf;
	else if (!data->secondary)
		/* if secondary is not NULL, it might be a GO */
		data->secondary = chanctx_conf;

	if (data->primary == chanctx_conf)
		data->primary_load = mvm->tcm.result.load[mvmvif->id];
	else if (data->secondary == chanctx_conf)
		data->secondary_load = mvm->tcm.result.load[mvmvif->id];
	/*
	 * don't reduce the Tx power if one of these is true:
	 *  we are in LOOSE
	 *  single share antenna product
	 *  BT is inactive
	 *  we are not associated
	 */
	if (FUNC4(mvm, vif) == BT_COEX_LOOSE_LUT ||
	    mvm->cfg->bt_shared_single_ant || !vif->bss_conf.assoc ||
	    FUNC10(mvm->last_bt_notif.bt_activity_grading) == BT_OFF) {
		FUNC6(mvm, mvmvif->ap_sta_id, false);
		FUNC5(mvm, vif, false, 0);
		return;
	}

	/* try to get the avg rssi from fw */
	ave_rssi = mvmvif->bf_data.ave_beacon_signal;

	/* if the RSSI isn't valid, fake it is very low */
	if (!ave_rssi)
		ave_rssi = -100;
	if (ave_rssi > -IWL_MVM_BT_COEX_EN_RED_TXP_THRESH) {
		if (FUNC6(mvm, mvmvif->ap_sta_id, true))
			FUNC2(mvm, "Couldn't send BT_CONFIG cmd\n");
	} else if (ave_rssi < -IWL_MVM_BT_COEX_DIS_RED_TXP_THRESH) {
		if (FUNC6(mvm, mvmvif->ap_sta_id, false))
			FUNC2(mvm, "Couldn't send BT_CONFIG cmd\n");
	}

	/* Begin to monitor the RSSI: it may influence the reduced Tx power */
	FUNC5(mvm, vif, true, ave_rssi);
}