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
struct iwl_mvm_vif {int csa_failed; int csa_countdown; int csa_count; int csa_misbehave; int ps_disabled; int /*<<< orphan*/  csa_work; int /*<<< orphan*/  csa_target_freq; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_4__* fw; int /*<<< orphan*/  csa_vif; int /*<<< orphan*/  csa_tx_blocked_vif; int /*<<< orphan*/  fwrt; } ;
struct TYPE_7__ {int beacon_int; } ;
struct ieee80211_vif {int type; TYPE_3__ bss_conf; int /*<<< orphan*/  csa_active; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_1__* chan; int /*<<< orphan*/  center_freq1; } ;
struct ieee80211_channel_switch {int count; int /*<<< orphan*/  block_tx; TYPE_2__ chandef; } ;
struct TYPE_8__ {int /*<<< orphan*/  ucode_capa; } ;
struct TYPE_5__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int IWL_MAX_CSA_BLOCK_TX ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_channel_switch*) ; 
 int FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_channel_switch*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*) ; 
 struct iwl_mvm_vif* FUNC10 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 struct ieee80211_vif* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif,
				      struct ieee80211_channel_switch *chsw)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	struct ieee80211_vif *csa_vif;
	struct iwl_mvm_vif *mvmvif = FUNC10(vif);
	int ret;

	FUNC13(&mvm->mutex);

	mvmvif->csa_failed = false;

	FUNC0(mvm, "pre CSA to freq %d\n",
			   chsw->chandef.center_freq1);

	FUNC5(&mvm->fwrt,
				       FUNC4(vif),
				       FW_DBG_TRIGGER_CHANNEL_SWITCH);

	switch (vif->type) {
	case NL80211_IFTYPE_AP:
		csa_vif =
			FUNC16(mvm->csa_vif,
						  FUNC11(&mvm->mutex));
		if (FUNC2(csa_vif && csa_vif->csa_active,
			      "Another CSA is already in progress")) {
			ret = -EBUSY;
			goto out_unlock;
		}

		/* we still didn't unblock tx. prevent new CS meanwhile */
		if (FUNC16(mvm->csa_tx_blocked_vif,
					      FUNC11(&mvm->mutex))) {
			ret = -EBUSY;
			goto out_unlock;
		}

		FUNC15(mvm->csa_vif, vif);

		if (FUNC2(mvmvif->csa_countdown,
			      "Previous CSA countdown didn't complete")) {
			ret = -EBUSY;
			goto out_unlock;
		}

		mvmvif->csa_target_freq = chsw->chandef.chan->center_freq;

		break;
	case NL80211_IFTYPE_STATION:
		if (chsw->block_tx) {
			/*
			 * In case of undetermined / long time with immediate
			 * quiet monitor status to gracefully disconnect
			 */
			if (!chsw->count ||
			    chsw->count * vif->bss_conf.beacon_int >
			    IWL_MAX_CSA_BLOCK_TX)
				FUNC17(&mvmvif->csa_work,
						      FUNC12(IWL_MAX_CSA_BLOCK_TX));
		}

		if (!FUNC3(&mvm->fw->ucode_capa,
				 IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD)) {
			ret = FUNC6(mvm, vif, chsw);
			if (ret)
				goto out_unlock;
		} else {
			FUNC8(mvm, vif, chsw);
		}

		mvmvif->csa_count = chsw->count;
		mvmvif->csa_misbehave = false;
		break;
	default:
		break;
	}

	mvmvif->ps_disabled = true;

	ret = FUNC7(mvm);
	if (ret)
		goto out_unlock;

	/* we won't be on this channel any longer */
	FUNC9(mvm);

out_unlock:
	FUNC14(&mvm->mutex);

	return ret;
}