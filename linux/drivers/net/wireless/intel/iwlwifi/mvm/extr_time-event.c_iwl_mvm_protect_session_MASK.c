#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_time_event_cmd {int repeat; int /*<<< orphan*/  policy; void* duration; void* interval; void* max_delay; int /*<<< orphan*/  max_frags; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_time_event_data {scalar_t__ end_jiffies; int /*<<< orphan*/  uid; scalar_t__ running; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  notif_wait; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*) ; 
 int TE_BSS_STA_AGGRESSIVE_ASSOC ; 
 int /*<<< orphan*/  TE_V2_FRAG_NONE ; 
 int TE_V2_NOTIF_HOST_EVENT_END ; 
 int TE_V2_NOTIF_HOST_EVENT_START ; 
 int TE_V2_START_IMMEDIATELY ; 
 int /*<<< orphan*/  const TIME_EVENT_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_time_event_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  iwl_mvm_te_notif ; 
 scalar_t__ FUNC10 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ; 
 struct iwl_mvm_vif* FUNC11 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC17(struct iwl_mvm *mvm,
			     struct ieee80211_vif *vif,
			     u32 duration, u32 min_duration,
			     u32 max_delay, bool wait_for_notif)
{
	struct iwl_mvm_vif *mvmvif = FUNC11(vif);
	struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
	const u16 te_notif_response[] = { TIME_EVENT_NOTIFICATION };
	struct iwl_notification_wait wait_te_notif;
	struct iwl_time_event_cmd time_cmd = {};

	FUNC15(&mvm->mutex);

	if (te_data->running &&
	    FUNC16(te_data->end_jiffies, FUNC4(min_duration))) {
		FUNC2(mvm, "We have enough time in the current TE: %u\n",
			     FUNC14(te_data->end_jiffies - jiffies));
		return;
	}

	if (te_data->running) {
		FUNC2(mvm, "extend 0x%x: only %u ms left\n",
			     te_data->uid,
			     FUNC14(te_data->end_jiffies - jiffies));
		/*
		 * we don't have enough time
		 * cancel the current TE and issue a new one
		 * Of course it would be better to remove the old one only
		 * when the new one is added, but we don't care if we are off
		 * channel for a bit. All we need to do, is not to return
		 * before we actually begin to be on the channel.
		 */
		FUNC9(mvm, vif);
	}

	time_cmd.action = FUNC7(FW_CTXT_ACTION_ADD);
	time_cmd.id_and_color =
		FUNC7(FUNC1(mvmvif->id, mvmvif->color));
	time_cmd.id = FUNC7(TE_BSS_STA_AGGRESSIVE_ASSOC);

	time_cmd.apply_time = FUNC7(0);

	time_cmd.max_frags = TE_V2_FRAG_NONE;
	time_cmd.max_delay = FUNC7(max_delay);
	/* TODO: why do we need to interval = bi if it is not periodic? */
	time_cmd.interval = FUNC7(1);
	time_cmd.duration = FUNC7(duration);
	time_cmd.repeat = 1;
	time_cmd.policy = FUNC6(TE_V2_NOTIF_HOST_EVENT_START |
				      TE_V2_NOTIF_HOST_EVENT_END |
				      TE_V2_START_IMMEDIATELY);

	if (!wait_for_notif) {
		FUNC10(mvm, vif, te_data, &time_cmd);
		return;
	}

	/*
	 * Create notification_wait for the TIME_EVENT_NOTIFICATION to use
	 * right after we send the time event
	 */
	FUNC8(&mvm->notif_wait, &wait_te_notif,
				   te_notif_response,
				   FUNC0(te_notif_response),
				   iwl_mvm_te_notif, te_data);

	/* If TE was sent OK - wait for the notification that started */
	if (FUNC10(mvm, vif, te_data, &time_cmd)) {
		FUNC3(mvm, "Failed to add TE to protect session\n");
		FUNC12(&mvm->notif_wait, &wait_te_notif);
	} else if (FUNC13(&mvm->notif_wait, &wait_te_notif,
					 FUNC5(max_delay))) {
		FUNC3(mvm, "Failed to protect session until TE\n");
	}
}