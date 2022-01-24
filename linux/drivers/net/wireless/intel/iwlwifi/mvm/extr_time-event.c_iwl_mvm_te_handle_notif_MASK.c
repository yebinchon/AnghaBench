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
struct iwl_time_event_notif {int unique_id; int action; int status; } ;
struct iwl_mvm_time_event_data {int end_jiffies; int running; scalar_t__ id; TYPE_1__* vif; int /*<<< orphan*/  duration; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; int /*<<< orphan*/  status; int /*<<< orphan*/  time_event_lock; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_NEED_FLUSH_P2P ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_ROC_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
#define  NL80211_IFTYPE_P2P_DEVICE 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ TE_CHANNEL_SWITCH_PERIOD ; 
 int TE_V2_NOTIF_HOST_EVENT_END ; 
 int TE_V2_NOTIF_HOST_EVENT_START ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct iwl_time_event_notif*,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*,struct iwl_mvm_time_event_data*,struct iwl_time_event_notif*) ; 
 int jiffies ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct iwl_mvm *mvm,
				    struct iwl_mvm_time_event_data *te_data,
				    struct iwl_time_event_notif *notif)
{
	FUNC12(&mvm->time_event_lock);

	FUNC0(mvm, "Handle time event notif - UID = 0x%x action %d\n",
		     FUNC11(notif->unique_id),
		     FUNC11(notif->action));

	FUNC8(mvm, notif, te_data);

	/*
	 * The FW sends the start/end time event notifications even for events
	 * that it fails to schedule. This is indicated in the status field of
	 * the notification. This happens in cases that the scheduler cannot
	 * find a schedule that can handle the event (for example requesting a
	 * P2P Device discoveribility, while there are other higher priority
	 * events in the system).
	 */
	if (!FUNC11(notif->status)) {
		const char *msg;

		if (notif->action & FUNC3(TE_V2_NOTIF_HOST_EVENT_START))
			msg = "Time Event start notification failure";
		else
			msg = "Time Event end notification failure";

		FUNC0(mvm, "%s\n", msg);

		if (FUNC7(mvm, te_data->vif, msg)) {
			FUNC9(mvm, te_data);
			return;
		}
	}

	if (FUNC11(notif->action) & TE_V2_NOTIF_HOST_EVENT_END) {
		FUNC0(mvm,
			     "TE ended - current time %lu, estimated end %lu\n",
			     jiffies, te_data->end_jiffies);

		switch (te_data->vif->type) {
		case NL80211_IFTYPE_P2P_DEVICE:
			FUNC5(mvm->hw);
			FUNC13(IWL_MVM_STATUS_NEED_FLUSH_P2P, &mvm->status);
			FUNC6(mvm);
			break;
		case NL80211_IFTYPE_STATION:
			/*
			 * By now, we should have finished association
			 * and know the dtim period.
			 */
			FUNC7(mvm, te_data->vif,
				"No beacon heard and the time event is over already...");
			break;
		default:
			break;
		}

		FUNC9(mvm, te_data);
	} else if (FUNC11(notif->action) & TE_V2_NOTIF_HOST_EVENT_START) {
		te_data->running = true;
		te_data->end_jiffies = FUNC2(te_data->duration);

		if (te_data->vif->type == NL80211_IFTYPE_P2P_DEVICE) {
			FUNC13(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status);
			FUNC4(mvm->hw);
		} else if (te_data->id == TE_CHANNEL_SWITCH_PERIOD) {
			FUNC10(mvm, te_data, notif);
		}
	} else {
		FUNC1(mvm, "Got TE with unknown action\n");
	}
}