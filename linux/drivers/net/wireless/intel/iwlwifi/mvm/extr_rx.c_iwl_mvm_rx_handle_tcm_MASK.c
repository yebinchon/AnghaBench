#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct iwl_rx_phy_info {int /*<<< orphan*/  frame_time; } ;
struct iwl_mvm_vif {scalar_t__ ap_sta_id; TYPE_3__* queue_params; } ;
struct TYPE_8__ {int /*<<< orphan*/  rate; int /*<<< orphan*/  rx_bytes; scalar_t__ detected; } ;
struct TYPE_6__ {scalar_t__ last_ampdu_ref; int /*<<< orphan*/  airtime; int /*<<< orphan*/ * pkts; } ;
struct iwl_mvm_tcm_mac {TYPE_4__ uapsd_nonagg_detect; scalar_t__ opened_rx_ba_sessions; TYPE_2__ rx; } ;
struct iwl_mvm_sta {int mac_id_n_color; scalar_t__ sta_id; int /*<<< orphan*/  vif; } ;
struct TYPE_5__ {struct iwl_mvm_tcm_mac* data; int /*<<< orphan*/  work; scalar_t__ ts; } ;
struct iwl_mvm {scalar_t__ ampdu_ref; TYPE_1__ tcm; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_7__ {int /*<<< orphan*/  uapsd; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FW_CTXT_ID_MSK ; 
 size_t IEEE80211_AC_BE ; 
 size_t IEEE80211_AC_BK ; 
 size_t IEEE80211_AC_VI ; 
 size_t IEEE80211_AC_VO ; 
 scalar_t__ MVM_TCM_PERIOD ; 
 int RATE_HT_MCS_NSS_MSK ; 
 int RATE_HT_MCS_NSS_POS ; 
 int RATE_HT_MCS_RATE_CODE_MSK ; 
 int RATE_MCS_CHAN_WIDTH_MSK ; 
 int RATE_MCS_CHAN_WIDTH_POS ; 
 int RATE_MCS_HT_MSK ; 
 int RATE_MCS_VHT_MSK ; 
 int RATE_VHT_MCS_NSS_MSK ; 
 int RATE_VHT_MCS_NSS_POS ; 
 int RATE_VHT_MCS_RATE_CODE_MSK ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC3 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC5 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* tid_to_mac80211_ac ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct iwl_mvm *mvm,
				  struct ieee80211_sta *sta,
				  struct ieee80211_hdr *hdr, u32 len,
				  struct iwl_rx_phy_info *phy_info,
				  u32 rate_n_flags)
{
	struct iwl_mvm_sta *mvmsta;
	struct iwl_mvm_tcm_mac *mdata;
	int mac;
	int ac = IEEE80211_AC_BE; /* treat non-QoS as BE */
	struct iwl_mvm_vif *mvmvif;
	/* expected throughput in 100Kbps, single stream, 20 MHz */
	static const u8 thresh_tpt[] = {
		9, 18, 30, 42, 60, 78, 90, 96, 120, 135,
	};
	u16 thr;

	if (FUNC4(hdr->frame_control))
		ac = tid_to_mac80211_ac[FUNC3(hdr)];

	mvmsta = FUNC5(sta);
	mac = mvmsta->mac_id_n_color & FW_CTXT_ID_MSK;

	if (FUNC9(jiffies, mvm->tcm.ts + MVM_TCM_PERIOD))
		FUNC8(&mvm->tcm.work, 0);
	mdata = &mvm->tcm.data[mac];
	mdata->rx.pkts[ac]++;

	/* count the airtime only once for each ampdu */
	if (mdata->rx.last_ampdu_ref != mvm->ampdu_ref) {
		mdata->rx.last_ampdu_ref = mvm->ampdu_ref;
		mdata->rx.airtime += FUNC7(phy_info->frame_time);
	}

	if (!(rate_n_flags & (RATE_MCS_HT_MSK | RATE_MCS_VHT_MSK)))
		return;

	mvmvif = FUNC6(mvmsta->vif);

	if (mdata->opened_rx_ba_sessions ||
	    mdata->uapsd_nonagg_detect.detected ||
	    (!mvmvif->queue_params[IEEE80211_AC_VO].uapsd &&
	     !mvmvif->queue_params[IEEE80211_AC_VI].uapsd &&
	     !mvmvif->queue_params[IEEE80211_AC_BE].uapsd &&
	     !mvmvif->queue_params[IEEE80211_AC_BK].uapsd) ||
	    mvmsta->sta_id != mvmvif->ap_sta_id)
		return;

	if (rate_n_flags & RATE_MCS_HT_MSK) {
		thr = thresh_tpt[rate_n_flags & RATE_HT_MCS_RATE_CODE_MSK];
		thr *= 1 + ((rate_n_flags & RATE_HT_MCS_NSS_MSK) >>
					RATE_HT_MCS_NSS_POS);
	} else {
		if (FUNC1((rate_n_flags & RATE_VHT_MCS_RATE_CODE_MSK) >=
				FUNC0(thresh_tpt)))
			return;
		thr = thresh_tpt[rate_n_flags & RATE_VHT_MCS_RATE_CODE_MSK];
		thr *= 1 + ((rate_n_flags & RATE_VHT_MCS_NSS_MSK) >>
					RATE_VHT_MCS_NSS_POS);
	}

	thr <<= ((rate_n_flags & RATE_MCS_CHAN_WIDTH_MSK) >>
				RATE_MCS_CHAN_WIDTH_POS);

	mdata->uapsd_nonagg_detect.rx_bytes += len;
	FUNC2(&mdata->uapsd_nonagg_detect.rate, thr);
}