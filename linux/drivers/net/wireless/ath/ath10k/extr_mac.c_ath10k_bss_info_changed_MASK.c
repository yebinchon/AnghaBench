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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_19__ {int* mcast_rate; int /*<<< orphan*/  basic_rates; int /*<<< orphan*/  ps; } ;
struct ieee80211_vif {scalar_t__ type; TYPE_6__ bss_conf; int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_supported_band {TYPE_7__* bitrates; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_bss_conf {int beacon_int; size_t dtim_period; int ssid_len; scalar_t__ ftm_responder; size_t txpower; scalar_t__ assoc; scalar_t__ use_short_preamble; scalar_t__ use_short_slot; int /*<<< orphan*/  use_cts_prot; int /*<<< orphan*/  bssid; int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  ssid; } ;
struct cfg80211_chan_def {TYPE_5__* chan; } ;
struct TYPE_14__ {int ssid_len; int /*<<< orphan*/  hidden_ssid; int /*<<< orphan*/  ssid; } ;
struct TYPE_15__ {TYPE_1__ ap; } ;
struct ath10k_vif {int beacon_interval; size_t dtim_period; scalar_t__ ftm_responder; size_t txpower; int /*<<< orphan*/  vdev_id; struct ieee80211_vif* vif; int /*<<< orphan*/  ps; int /*<<< orphan*/  use_cts_prot; int /*<<< orphan*/  bssid; TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_8__* vdev_param; int /*<<< orphan*/  svc_map; TYPE_9__* pdev_param; } ;
struct ath10k {int phy_capability; int /*<<< orphan*/  conf_mutex; TYPE_10__ wmi; TYPE_4__* hw; scalar_t__ monitor_started; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_22__ {int beacon_tx_mode; } ;
struct TYPE_21__ {int beacon_interval; int dtim_period; int rtt_responder_role; int slot_time; int preamble; int mcast_data_rate; int bcast_data_rate; int mgmt_rate; } ;
struct TYPE_20__ {int bitrate; } ;
struct TYPE_18__ {int band; } ;
struct TYPE_17__ {TYPE_3__* wiphy; } ;
struct TYPE_16__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_13__ {int bitrate; int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_MAC ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ATH10K_MAC_FIRST_OFDM_RATE_IDX ; 
 int BSS_CHANGED_AP_PROBE_RESP ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INFO ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_CTS_PROT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int BSS_CHANGED_FTM_RESPONDER ; 
 int BSS_CHANGED_IBSS ; 
 int BSS_CHANGED_MCAST_RATE ; 
 int BSS_CHANGED_PS ; 
 int BSS_CHANGED_SSID ; 
 int BSS_CHANGED_TXPOWER ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int WHAL_WLAN_11A_CAPABILITY ; 
 int /*<<< orphan*/  WMI_BEACON_STAGGERED_MODE ; 
 int WMI_RATE_PREAMBLE_CCK ; 
 int WMI_RATE_PREAMBLE_OFDM ; 
 int /*<<< orphan*/  WMI_SERVICE_RTT_RESPONDER_ROLE ; 
 int WMI_VDEV_PREAMBLE_LONG ; 
 int WMI_VDEV_PREAMBLE_SHORT ; 
 int WMI_VDEV_SLOT_TIME_LONG ; 
 int WMI_VDEV_SLOT_TIME_SHORT ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_vif*,struct ieee80211_bss_conf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k_vif*,struct ieee80211_bss_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct ath10k_vif*) ; 
 int FUNC9 (int) ; 
 int FUNC10 (struct ath10k_vif*) ; 
 int FUNC11 (struct ath10k_vif*) ; 
 int FUNC12 (struct ath10k_vif*) ; 
 int FUNC13 (struct ath10k*) ; 
 scalar_t__ FUNC14 (struct ieee80211_vif*,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC16 (struct ath10k*) ; 
 int FUNC17 (struct ath10k_vif*) ; 
 int /*<<< orphan*/  FUNC18 (struct ath10k*,char*,int,...) ; 
 TYPE_11__* ath10k_wmi_legacy_rates ; 
 int FUNC19 (struct ath10k*,int,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct ath10k*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC30(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    struct ieee80211_bss_conf *info,
				    u32 changed)
{
	struct ath10k *ar = hw->priv;
	struct ath10k_vif *arvif = (void *)vif->drv_priv;
	struct cfg80211_chan_def def;
	u32 vdev_param, pdev_param, slottime, preamble;
	u16 bitrate, hw_value;
	u8 rate, basic_rate_idx, rateidx;
	int ret = 0, hw_rate_code, mcast_rate;
	enum nl80211_band band;
	const struct ieee80211_supported_band *sband;

	FUNC26(&ar->conf_mutex);

	if (changed & BSS_CHANGED_IBSS)
		FUNC5(arvif, info, vif->addr);

	if (changed & BSS_CHANGED_BEACON_INT) {
		arvif->beacon_interval = info->beacon_int;
		vdev_param = ar->wmi.vdev_param->beacon_interval;
		ret = FUNC20(ar, arvif->vdev_id, vdev_param,
						arvif->beacon_interval);
		FUNC6(ar, ATH10K_DBG_MAC,
			   "mac vdev %d beacon_interval %d\n",
			   arvif->vdev_id, arvif->beacon_interval);

		if (ret)
			FUNC18(ar, "failed to set beacon interval for vdev %d: %i\n",
				    arvif->vdev_id, ret);
	}

	if (changed & BSS_CHANGED_BEACON) {
		FUNC6(ar, ATH10K_DBG_MAC,
			   "vdev %d set beacon tx mode to staggered\n",
			   arvif->vdev_id);

		pdev_param = ar->wmi.pdev_param->beacon_tx_mode;
		ret = FUNC19(ar, pdev_param,
						WMI_BEACON_STAGGERED_MODE);
		if (ret)
			FUNC18(ar, "failed to set beacon mode for vdev %d: %i\n",
				    arvif->vdev_id, ret);

		ret = FUNC11(arvif);
		if (ret)
			FUNC18(ar, "failed to update beacon template: %d\n",
				    ret);

		if (FUNC23(vif)) {
			/* mesh doesn't use SSID but firmware needs it */
			FUNC28(arvif->u.ap.ssid, "mesh",
				sizeof(arvif->u.ap.ssid));
			arvif->u.ap.ssid_len = 4;
		}
	}

	if (changed & BSS_CHANGED_AP_PROBE_RESP) {
		ret = FUNC12(arvif);
		if (ret)
			FUNC18(ar, "failed to setup probe resp template on vdev %i: %d\n",
				    arvif->vdev_id, ret);
	}

	if (changed & (BSS_CHANGED_BEACON_INFO | BSS_CHANGED_BEACON)) {
		arvif->dtim_period = info->dtim_period;

		FUNC6(ar, ATH10K_DBG_MAC,
			   "mac vdev %d dtim_period %d\n",
			   arvif->vdev_id, arvif->dtim_period);

		vdev_param = ar->wmi.vdev_param->dtim_period;
		ret = FUNC20(ar, arvif->vdev_id, vdev_param,
						arvif->dtim_period);
		if (ret)
			FUNC18(ar, "failed to set dtim period for vdev %d: %i\n",
				    arvif->vdev_id, ret);
	}

	if (changed & BSS_CHANGED_SSID &&
	    vif->type == NL80211_IFTYPE_AP) {
		arvif->u.ap.ssid_len = info->ssid_len;
		if (info->ssid_len)
			FUNC25(arvif->u.ap.ssid, info->ssid, info->ssid_len);
		arvif->u.ap.hidden_ssid = info->hidden_ssid;
	}

	if (changed & BSS_CHANGED_BSSID && !FUNC24(info->bssid))
		FUNC21(arvif->bssid, info->bssid);

	if (changed & BSS_CHANGED_FTM_RESPONDER &&
	    arvif->ftm_responder != info->ftm_responder &&
	    FUNC29(WMI_SERVICE_RTT_RESPONDER_ROLE, ar->wmi.svc_map)) {
		arvif->ftm_responder = info->ftm_responder;

		vdev_param = ar->wmi.vdev_param->rtt_responder_role;
		ret = FUNC20(ar, arvif->vdev_id, vdev_param,
						arvif->ftm_responder);

		FUNC6(ar, ATH10K_DBG_MAC,
			   "mac vdev %d ftm_responder %d:ret %d\n",
			   arvif->vdev_id, arvif->ftm_responder, ret);
	}

	if (changed & BSS_CHANGED_BEACON_ENABLED)
		FUNC4(arvif, info);

	if (changed & BSS_CHANGED_ERP_CTS_PROT) {
		arvif->use_cts_prot = info->use_cts_prot;

		ret = FUNC17(arvif);
		if (ret)
			FUNC18(ar, "failed to recalculate rts/cts prot for vdev %d: %d\n",
				    arvif->vdev_id, ret);

		if (FUNC8(arvif)) {
			ret = FUNC10(arvif);
			if (ret)
				FUNC18(ar, "failed to set cts protection for vdev %d: %d\n",
					    arvif->vdev_id, ret);
		}
	}

	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (info->use_short_slot)
			slottime = WMI_VDEV_SLOT_TIME_SHORT; /* 9us */

		else
			slottime = WMI_VDEV_SLOT_TIME_LONG; /* 20us */

		FUNC6(ar, ATH10K_DBG_MAC, "mac vdev %d slot_time %d\n",
			   arvif->vdev_id, slottime);

		vdev_param = ar->wmi.vdev_param->slot_time;
		ret = FUNC20(ar, arvif->vdev_id, vdev_param,
						slottime);
		if (ret)
			FUNC18(ar, "failed to set erp slot for vdev %d: %i\n",
				    arvif->vdev_id, ret);
	}

	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
		if (info->use_short_preamble)
			preamble = WMI_VDEV_PREAMBLE_SHORT;
		else
			preamble = WMI_VDEV_PREAMBLE_LONG;

		FUNC6(ar, ATH10K_DBG_MAC,
			   "mac vdev %d preamble %dn",
			   arvif->vdev_id, preamble);

		vdev_param = ar->wmi.vdev_param->preamble;
		ret = FUNC20(ar, arvif->vdev_id, vdev_param,
						preamble);
		if (ret)
			FUNC18(ar, "failed to set preamble for vdev %d: %i\n",
				    arvif->vdev_id, ret);
	}

	if (changed & BSS_CHANGED_ASSOC) {
		if (info->assoc) {
			/* Workaround: Make sure monitor vdev is not running
			 * when associating to prevent some firmware revisions
			 * (e.g. 10.1 and 10.2) from crashing.
			 */
			if (ar->monitor_started)
				FUNC16(ar);
			FUNC1(hw, vif, info);
			FUNC15(ar);
		} else {
			FUNC2(hw, vif);
		}
	}

	if (changed & BSS_CHANGED_TXPOWER) {
		FUNC6(ar, ATH10K_DBG_MAC, "mac vdev_id %i txpower %d\n",
			   arvif->vdev_id, info->txpower);

		arvif->txpower = info->txpower;
		ret = FUNC13(ar);
		if (ret)
			FUNC18(ar, "failed to recalc tx power: %d\n", ret);
	}

	if (changed & BSS_CHANGED_PS) {
		arvif->ps = vif->bss_conf.ps;

		ret = FUNC3(ar);
		if (ret)
			FUNC18(ar, "failed to setup ps on vdev %i: %d\n",
				    arvif->vdev_id, ret);
	}

	if (changed & BSS_CHANGED_MCAST_RATE &&
	    !FUNC14(arvif->vif, &def)) {
		band = def.chan->band;
		mcast_rate = vif->bss_conf.mcast_rate[band];
		if (mcast_rate > 0)
			rateidx = mcast_rate - 1;
		else
			rateidx = FUNC22(vif->bss_conf.basic_rates) - 1;

		if (ar->phy_capability & WHAL_WLAN_11A_CAPABILITY)
			rateidx += ATH10K_MAC_FIRST_OFDM_RATE_IDX;

		bitrate = ath10k_wmi_legacy_rates[rateidx].bitrate;
		hw_value = ath10k_wmi_legacy_rates[rateidx].hw_value;
		if (FUNC7(bitrate))
			preamble = WMI_RATE_PREAMBLE_CCK;
		else
			preamble = WMI_RATE_PREAMBLE_OFDM;

		rate = FUNC0(hw_value, 0, preamble);

		FUNC6(ar, ATH10K_DBG_MAC,
			   "mac vdev %d mcast_rate %x\n",
			   arvif->vdev_id, rate);

		vdev_param = ar->wmi.vdev_param->mcast_data_rate;
		ret = FUNC20(ar, arvif->vdev_id,
						vdev_param, rate);
		if (ret)
			FUNC18(ar,
				    "failed to set mcast rate on vdev %i: %d\n",
				    arvif->vdev_id,  ret);

		vdev_param = ar->wmi.vdev_param->bcast_data_rate;
		ret = FUNC20(ar, arvif->vdev_id,
						vdev_param, rate);
		if (ret)
			FUNC18(ar,
				    "failed to set bcast rate on vdev %i: %d\n",
				    arvif->vdev_id,  ret);
	}

	if (changed & BSS_CHANGED_BASIC_RATES) {
		if (FUNC14(vif, &def)) {
			FUNC27(&ar->conf_mutex);
			return;
		}

		sband = ar->hw->wiphy->bands[def.chan->band];
		basic_rate_idx = FUNC22(vif->bss_conf.basic_rates) - 1;
		bitrate = sband->bitrates[basic_rate_idx].bitrate;

		hw_rate_code = FUNC9(bitrate);
		if (hw_rate_code < 0) {
			FUNC18(ar, "bitrate not supported %d\n", bitrate);
			FUNC27(&ar->conf_mutex);
			return;
		}

		vdev_param = ar->wmi.vdev_param->mgmt_rate;
		ret = FUNC20(ar, arvif->vdev_id, vdev_param,
						hw_rate_code);
		if (ret)
			FUNC18(ar, "failed to set mgmt tx rate %d\n", ret);
	}

	FUNC27(&ar->conf_mutex);
}