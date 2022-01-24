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
typedef  int u32 ;
struct TYPE_7__ {scalar_t__ bf_enabled; scalar_t__ last_cqm_event; scalar_t__ ave_beacon_signal; } ;
struct iwl_mvm_vif {TYPE_3__ bf_data; int /*<<< orphan*/  ap_sta_id; int /*<<< orphan*/  beacon_stats; scalar_t__ associated; int /*<<< orphan*/ * bssid; } ;
struct iwl_mvm {TYPE_2__* fw; int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int beacon_int; scalar_t__ he_support; } ;
struct ieee80211_vif {scalar_t__ mu_mimo_owner; int /*<<< orphan*/  addr; scalar_t__ p2p; TYPE_1__ bss_conf; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  txpower; scalar_t__ assoc; int /*<<< orphan*/  bssid; } ;
struct TYPE_8__ {int /*<<< orphan*/  disable_11ax; } ;
struct TYPE_6__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int BSS_CHANGED_ARP_FILTER ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_INFO ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_CQM ; 
 int BSS_CHANGED_MU_GROUPS ; 
 int BSS_CHANGED_P2P_PS ; 
 int BSS_CHANGED_PS ; 
 int BSS_CHANGED_QOS ; 
 int BSS_CHANGED_TXPOWER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_SMPS_AUTOMATIC ; 
 int /*<<< orphan*/  IEEE80211_SMPS_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_MVM_SMPS_REQ_PROT ; 
 int /*<<< orphan*/  IWL_MVM_SMPS_REQ_TT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RESTART_REQUESTED ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_UMAC_SCAN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*) ; 
 int FUNC10 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iwl_mvm*,struct ieee80211_vif*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC13 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_mvm*,struct ieee80211_vif*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_mvm*,int) ; 
 int FUNC18 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct iwl_mvm*,struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC22 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC23 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC25 (struct ieee80211_vif*) ; 
 TYPE_4__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC29(struct iwl_mvm *mvm,
					     struct ieee80211_vif *vif,
					     struct ieee80211_bss_conf *bss_conf,
					     u32 changes)
{
	struct iwl_mvm_vif *mvmvif = FUNC25(vif);
	int ret;

	/*
	 * Re-calculate the tsf id, as the master-slave relations depend on the
	 * beacon interval, which was not known when the station interface was
	 * added.
	 */
	if (changes & BSS_CHANGED_ASSOC && bss_conf->assoc) {
		if (vif->bss_conf.he_support &&
		    !iwlwifi_mod_params.disable_11ax)
			FUNC7(mvm, vif, mvmvif->ap_sta_id);

		FUNC12(mvm, vif);
	}

	/* Update MU EDCA params */
	if (changes & BSS_CHANGED_QOS && mvmvif->associated &&
	    bss_conf->assoc && vif->bss_conf.he_support &&
	    !iwlwifi_mod_params.disable_11ax)
		FUNC7(mvm, vif, mvmvif->ap_sta_id);

	/*
	 * If we're not associated yet, take the (new) BSSID before associating
	 * so the firmware knows. If we're already associated, then use the old
	 * BSSID here, and we'll send a cleared one later in the CHANGED_ASSOC
	 * branch for disassociation below.
	 */
	if (changes & BSS_CHANGED_BSSID && !mvmvif->associated)
		FUNC26(mvmvif->bssid, bss_conf->bssid, ETH_ALEN);

	ret = FUNC11(mvm, vif, false, mvmvif->bssid);
	if (ret)
		FUNC2(mvm, "failed to update MAC %pM\n", vif->addr);

	/* after sending it once, adopt mac80211 data */
	FUNC26(mvmvif->bssid, bss_conf->bssid, ETH_ALEN);
	mvmvif->associated = bss_conf->assoc;

	if (changes & BSS_CHANGED_ASSOC) {
		if (bss_conf->assoc) {
			/* clear statistics to get clean beacon counter */
			FUNC17(mvm, true);
			FUNC27(&mvmvif->beacon_stats, 0,
			       sizeof(mvmvif->beacon_stats));

			/* add quota for this interface */
			ret = FUNC23(mvm, true, NULL);
			if (ret) {
				FUNC2(mvm, "failed to update quotas\n");
				return;
			}

			if (FUNC28(IWL_MVM_STATUS_IN_HW_RESTART,
				     &mvm->status)) {
				/*
				 * If we're restarting then the firmware will
				 * obviously have lost synchronisation with
				 * the AP. It will attempt to synchronise by
				 * itself, but we can make it more reliable by
				 * scheduling a session protection time event.
				 *
				 * The firmware needs to receive a beacon to
				 * catch up with synchronisation, use 110% of
				 * the beacon interval.
				 *
				 * Set a large maximum delay to allow for more
				 * than a single interface.
				 */
				u32 dur = (11 * vif->bss_conf.beacon_int) / 10;
				FUNC15(mvm, vif, dur, dur,
							5 * dur, false);
			}

			FUNC20(mvm, vif, false);
			FUNC14(mvm, vif);
			if (vif->p2p) {
				FUNC24(mvm, vif,
						    IWL_MVM_SMPS_REQ_PROT,
						    IEEE80211_SMPS_DYNAMIC);
			}
		} else if (mvmvif->ap_sta_id != IWL_MVM_INVALID_STA) {
			/*
			 * If update fails - SF might be running in associated
			 * mode while disassociated - which is forbidden.
			 */
			ret = FUNC20(mvm, vif, false);
			FUNC4(ret &&
				  !FUNC28(IWL_MVM_STATUS_HW_RESTART_REQUESTED,
					    &mvm->status),
				  "Failed to update SF upon disassociation\n");

			/*
			 * If we get an assert during the connection (after the
			 * station has been added, but before the vif is set
			 * to associated), mac80211 will re-add the station and
			 * then configure the vif. Since the vif is not
			 * associated, we would remove the station here and
			 * this would fail the recovery.
			 */
			if (!FUNC28(IWL_MVM_STATUS_IN_HW_RESTART,
				      &mvm->status)) {
				/*
				 * Remove AP station now that
				 * the MAC is unassoc
				 */
				ret = FUNC18(mvm, vif,
							mvmvif->ap_sta_id);
				if (ret)
					FUNC2(mvm,
						"failed to remove AP station\n");

				mvmvif->ap_sta_id = IWL_MVM_INVALID_STA;
			}

			/* remove quota for this interface */
			ret = FUNC23(mvm, false, NULL);
			if (ret)
				FUNC2(mvm, "failed to update quotas\n");

			/* this will take the cleared BSSID from bss_conf */
			ret = FUNC11(mvm, vif, false, NULL);
			if (ret)
				FUNC2(mvm,
					"failed to update MAC %pM (clear after unassoc)\n",
					vif->addr);
		}

		/*
		 * The firmware tracks the MU-MIMO group on its own.
		 * However, on HW restart we should restore this data.
		 */
		if (FUNC28(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
		    (changes & BSS_CHANGED_MU_GROUPS) && vif->mu_mimo_owner) {
			ret = FUNC22(mvm, vif);
			if (ret)
				FUNC2(mvm,
					"failed to update VHT MU_MIMO groups\n");
		}

		FUNC16(mvm);
		FUNC9(mvm);

		/* reset rssi values */
		mvmvif->bf_data.ave_beacon_signal = 0;

		FUNC6(mvm);
		FUNC24(mvm, vif, IWL_MVM_SMPS_REQ_TT,
				    IEEE80211_SMPS_AUTOMATIC);
		if (FUNC5(&mvm->fw->ucode_capa,
				IWL_UCODE_TLV_CAPA_UMAC_SCAN))
			FUNC8(mvm);
	}

	if (changes & BSS_CHANGED_BEACON_INFO) {
		/*
		 * We received a beacon from the associated AP so
		 * remove the session protection.
		 */
		FUNC21(mvm, vif);

		FUNC20(mvm, vif, false);
		FUNC3(FUNC10(mvm, vif, 0));
	}

	if (changes & (BSS_CHANGED_PS | BSS_CHANGED_P2P_PS | BSS_CHANGED_QOS |
		       /*
			* Send power command on every beacon change,
			* because we may have not enabled beacon abort yet.
			*/
		       BSS_CHANGED_BEACON_INFO)) {
		ret = FUNC13(mvm);
		if (ret)
			FUNC2(mvm, "failed to update power mode\n");
	}

	if (changes & BSS_CHANGED_TXPOWER) {
		FUNC0(mvm, "Changing TX Power to %d\n",
				bss_conf->txpower);
		FUNC19(mvm, vif, bss_conf->txpower);
	}

	if (changes & BSS_CHANGED_CQM) {
		FUNC1(mvm, "cqm info_changed\n");
		/* reset cqm events tracking */
		mvmvif->bf_data.last_cqm_event = 0;
		if (mvmvif->bf_data.bf_enabled) {
			ret = FUNC10(mvm, vif, 0);
			if (ret)
				FUNC2(mvm,
					"failed to update CQM thresholds\n");
		}
	}

	if (changes & BSS_CHANGED_ARP_FILTER) {
		FUNC1(mvm, "arp filter changed\n");
		FUNC9(mvm);
	}
}