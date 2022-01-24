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
struct iwl_mvm_vif {int csa_countdown; int ap_ibss_active; int /*<<< orphan*/  id; int /*<<< orphan*/  time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_1__* fw; scalar_t__ p2p_device_vif; scalar_t__ ap_last_beacon_gp2; scalar_t__ csa_tx_block_bcn_timeout; int /*<<< orphan*/  csa_tx_blocked_vif; int /*<<< orphan*/  csa_vif; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ p2p; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_STA_TYPE ; 
 int /*<<< orphan*/  LOW_LATENCY_VIF_TYPE ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct iwl_mvm_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_mvm*,int,int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC14 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_mvm_vif*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct ieee80211_vif* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC14(vif);

	FUNC8(mvm, vif);

	FUNC16(&mvm->mutex);

	/* Handle AP stop while in CSA */
	if (FUNC18(mvm->csa_vif) == vif) {
		FUNC9(mvm, mvmvif,
					  &mvmvif->time_event_data);
		FUNC1(mvm->csa_vif, NULL);
		mvmvif->csa_countdown = false;
	}

	if (FUNC18(mvm->csa_tx_blocked_vif) == vif) {
		FUNC1(mvm->csa_tx_blocked_vif, NULL);
		mvm->csa_tx_block_bcn_timeout = 0;
	}

	mvmvif->ap_ibss_active = false;
	mvm->ap_last_beacon_gp2 = 0;

	if (vif->type == NL80211_IFTYPE_AP && !vif->p2p) {
		FUNC15(mvmvif, false,
					    LOW_LATENCY_VIF_TYPE);
		FUNC11(mvm, false,  mvmvif->id);
	}

	FUNC4(mvm);

	/* Need to update the P2P Device MAC (only GO, IBSS is single vif) */
	if (vif->p2p && mvm->p2p_device_vif)
		FUNC5(mvm, mvm->p2p_device_vif, false, NULL);

	FUNC13(mvm, false, NULL);

	/*
	 * This is not very nice, but the simplest:
	 * For older FWs removing the mcast sta before the bcast station may
	 * cause assert 0x2b00.
	 * This is fixed in later FW (which will stop beaconing when removing
	 * bcast station).
	 * So make the order of removal depend on the TLV
	 */
	if (!FUNC2(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
		FUNC10(mvm, vif);
	FUNC12(mvm, vif);
	if (FUNC2(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
		FUNC10(mvm, vif);
	FUNC3(mvm, vif);

	FUNC7(mvm);

	FUNC6(mvm, vif);

	FUNC17(&mvm->mutex);
}