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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_scan_params {int n_ssids; int flags; int /*<<< orphan*/  type; scalar_t__ measurement_dwell; scalar_t__ pass_all; int /*<<< orphan*/  hb_type; TYPE_1__* ssids; } ;
struct iwl_mvm {scalar_t__ sched_scan_pass_all; scalar_t__ scan_iter_notif_enabled; TYPE_2__* fw; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_3__ {scalar_t__ ssid_len; } ;

/* Variables and functions */
 scalar_t__ IWL_MVM_ADWELL_ENABLE ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_ADAPTIVE_DWELL ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_MATCH ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_MAX_CHNL_TIME ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_PASSIVE ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_PASS_ALL ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_PERIODIC ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_DEFER_SUPP ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_HIGH_TX_RATE ; 
 int /*<<< orphan*/  IWL_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME ; 
 int NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION ; 
 int NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE ; 
 scalar_t__ SCHED_SCAN_PASS_ALL_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iwl_mvm*) ; 
 scalar_t__ FUNC3 (struct iwl_mvm*) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*) ; 
 scalar_t__ FUNC5 (struct iwl_mvm_scan_params*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 

__attribute__((used)) static u16 FUNC8(struct iwl_mvm *mvm,
				   struct iwl_mvm_scan_params *params,
				   struct ieee80211_vif *vif)
{
	u16 flags = 0;

	if (params->n_ssids == 0)
		flags = IWL_UMAC_SCAN_GEN_FLAGS_PASSIVE;

	if (params->n_ssids == 1 && params->ssids[0].ssid_len != 0)
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT;

	if (FUNC6(params->type))
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_FRAGMENTED;

	if (FUNC3(mvm) &&
	    FUNC6(params->hb_type))
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_LMAC2_FRAGMENTED;

	if (FUNC7(mvm) &&
	    FUNC1(&mvm->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_WFA_TPC_REP_IE_SUPPORT))
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED;

	if (params->pass_all)
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_PASS_ALL;
	else
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_MATCH;

	if (!FUNC5(params))
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_PERIODIC;

	if (params->measurement_dwell)
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE;

#ifdef CONFIG_IWLWIFI_DEBUGFS
	if (mvm->scan_iter_notif_enabled)
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE;
#endif

	if (mvm->sched_scan_pass_all == SCHED_SCAN_PASS_ALL_ENABLED)
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE;

	if (FUNC2(mvm) && IWL_MVM_ADWELL_ENABLE &&
	    vif->type != NL80211_IFTYPE_P2P_DEVICE)
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_ADAPTIVE_DWELL;

	/*
	 * Extended dwell is relevant only for low band to start with, as it is
	 * being used for social channles only (1, 6, 11), so we can check
	 * only scan type on low band also for CDB.
	 */
	if (FUNC5(params) &&
	    vif->type != NL80211_IFTYPE_P2P_DEVICE &&
	    !FUNC6(params->type) &&
	    !FUNC2(mvm) &&
	    !FUNC4(mvm))
		flags |= IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL;

	if (FUNC4(mvm)) {
		if ((params->flags &
		     NL80211_SCAN_FLAG_OCE_PROBE_REQ_HIGH_TX_RATE))
			flags |= IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_HIGH_TX_RATE;
		/* Since IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL and
		 * NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION shares
		 * the same bit, we need to make sure that we use this bit here
		 * only when IWL_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL cannot be
		 * used. */
		if ((params->flags &
		     NL80211_SCAN_FLAG_OCE_PROBE_REQ_DEFERRAL_SUPPRESSION) &&
		     !FUNC0(!FUNC2(mvm)))
			flags |= IWL_UMAC_SCAN_GEN_FLAGS_PROB_REQ_DEFER_SUPP;
		if ((params->flags & NL80211_SCAN_FLAG_FILS_MAX_CHANNEL_TIME))
			flags |= IWL_UMAC_SCAN_GEN_FLAGS_MAX_CHNL_TIME;
	}

	return flags;
}