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
struct iwl_mvm_vif {int monitor_active; int ps_disabled; int ap_ibss_active; int csa_countdown; int /*<<< orphan*/ * phy_ctxt; int /*<<< orphan*/  time_event_data; } ;
struct iwl_mvm {TYPE_1__* fw; int /*<<< orphan*/  csa_tx_blocked_vif; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int type; } ;
struct ieee80211_chanctx_conf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_mvm_vif*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct iwl_mvm_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,int,struct ieee80211_vif*) ; 
 struct iwl_mvm_vif* FUNC8 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC11(struct iwl_mvm *mvm,
					   struct ieee80211_vif *vif,
					   struct ieee80211_chanctx_conf *ctx,
					   bool switching_chanctx)
{
	struct iwl_mvm_vif *mvmvif = FUNC8(vif);
	struct ieee80211_vif *disabled_vif = NULL;

	FUNC9(&mvm->mutex);

	FUNC5(mvm, mvmvif, &mvmvif->time_event_data);

	switch (vif->type) {
	case NL80211_IFTYPE_ADHOC:
		goto out;
	case NL80211_IFTYPE_MONITOR:
		mvmvif->monitor_active = false;
		mvmvif->ps_disabled = false;
		FUNC6(mvm, vif);
		break;
	case NL80211_IFTYPE_AP:
		/* This part is triggered only during CSA */
		if (!switching_chanctx || !mvmvif->ap_ibss_active)
			goto out;

		mvmvif->csa_countdown = false;

		/* Set CS bit on all the stations */
		FUNC3(mvm, mvmvif, true);

		/* Save blocked iface, the timeout is set on the next beacon */
		FUNC10(mvm->csa_tx_blocked_vif, vif);

		mvmvif->ap_ibss_active = false;
		break;
	case NL80211_IFTYPE_STATION:
		if (!switching_chanctx)
			break;

		disabled_vif = vif;

		if (!FUNC0(&mvm->fw->ucode_capa,
				 IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD))
			FUNC2(mvm, vif, true, NULL);
		break;
	default:
		break;
	}

	FUNC7(mvm, false, disabled_vif);
	FUNC1(mvm, vif);

out:
	mvmvif->phy_ctxt = NULL;
	FUNC4(mvm);
}