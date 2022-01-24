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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_sta {int sleeping; TYPE_1__* vif; } ;
struct iwl_mvm_pm_state_notification {int type; size_t sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IEEE80211_NUM_TIDS ; 
 int FUNC1 (struct ieee80211_sta*) ; 
#define  IWL_MVM_PM_EVENT_ASLEEP 131 
#define  IWL_MVM_PM_EVENT_AWAKE 130 
#define  IWL_MVM_PM_EVENT_PS_POLL 129 
#define  IWL_MVM_PM_EVENT_UAPSD 128 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  STA_NOTIFY_AWAKE ; 
 int /*<<< orphan*/  STA_NOTIFY_SLEEP ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_sta* FUNC7 (struct ieee80211_sta*) ; 
 struct ieee80211_sta* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct iwl_rx_packet* FUNC11 (struct iwl_rx_cmd_buffer*) ; 

void FUNC12(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC11(rxb);
	struct iwl_mvm_pm_state_notification *notif = (void *)pkt->data;
	struct ieee80211_sta *sta;
	struct iwl_mvm_sta *mvmsta;
	bool sleeping = (notif->type != IWL_MVM_PM_EVENT_AWAKE);

	if (FUNC2(notif->sta_id >= FUNC0(mvm->fw_id_to_mac_id)))
		return;

	FUNC9();
	sta = FUNC8(mvm->fw_id_to_mac_id[notif->sta_id]);
	if (FUNC2(FUNC1(sta))) {
		FUNC10();
		return;
	}

	mvmsta = FUNC7(sta);

	if (!mvmsta->vif ||
	    mvmsta->vif->type != NL80211_IFTYPE_AP) {
		FUNC10();
		return;
	}

	if (mvmsta->sleeping != sleeping) {
		mvmsta->sleeping = sleeping;
		FUNC3(mvm->hw,
			sleeping ? STA_NOTIFY_SLEEP : STA_NOTIFY_AWAKE,
			sta);
		FUNC4(sta, sleeping);
	}

	if (sleeping) {
		switch (notif->type) {
		case IWL_MVM_PM_EVENT_AWAKE:
		case IWL_MVM_PM_EVENT_ASLEEP:
			break;
		case IWL_MVM_PM_EVENT_UAPSD:
			FUNC6(sta, IEEE80211_NUM_TIDS);
			break;
		case IWL_MVM_PM_EVENT_PS_POLL:
			FUNC5(sta);
			break;
		default:
			break;
		}
	}

	FUNC10();
}