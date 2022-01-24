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
typedef  int u32 ;
struct iwl_mvm_vif {int csa_countdown; int /*<<< orphan*/  time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  csa_vif; } ;
struct TYPE_2__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ p2p; } ;

/* Variables and functions */
 int IWL_MVM_CHANNEL_SWITCH_MARGIN ; 
 int IWL_MVM_CHANNEL_SWITCH_TIME_GO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_vif*) ; 
 int FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct iwl_mvm_vif* FUNC7 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC8(struct iwl_mvm *mvm,
				   struct ieee80211_vif *csa_vif, u32 gp2,
				   bool tx_success)
{
	struct iwl_mvm_vif *mvmvif =
			FUNC7(csa_vif);

	/* Don't start to countdown from a failed beacon */
	if (!tx_success && !mvmvif->csa_countdown)
		return;

	mvmvif->csa_countdown = true;

	if (!FUNC2(csa_vif)) {
		int c = FUNC3(csa_vif);

		FUNC4(mvm, csa_vif);
		if (csa_vif->p2p &&
		    !FUNC6(&mvmvif->time_event_data) && gp2 &&
		    tx_success) {
			u32 rel_time = (c + 1) *
				       csa_vif->bss_conf.beacon_int -
				       IWL_MVM_CHANNEL_SWITCH_TIME_GO;
			u32 apply_time = gp2 + rel_time * 1024;

			FUNC5(mvm, csa_vif,
					 IWL_MVM_CHANNEL_SWITCH_TIME_GO -
					 IWL_MVM_CHANNEL_SWITCH_MARGIN,
					 apply_time);
		}
	} else if (!FUNC6(&mvmvif->time_event_data)) {
		/* we don't have CSA NoA scheduled yet, switch now */
		FUNC1(csa_vif);
		FUNC0(mvm->csa_vif, NULL);
	}
}