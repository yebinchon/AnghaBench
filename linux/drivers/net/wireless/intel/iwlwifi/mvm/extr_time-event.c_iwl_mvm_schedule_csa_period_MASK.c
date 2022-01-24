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
typedef  scalar_t__ u32 ;
struct iwl_time_event_cmd {int repeat; int /*<<< orphan*/  policy; void* interval; void* duration; int /*<<< orphan*/  max_frags; void* apply_time; void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_time_event_data {scalar_t__ id; scalar_t__ running; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  time_event_lock; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FW_CTXT_ACTION_ADD ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 scalar_t__ TE_CHANNEL_SWITCH_PERIOD ; 
 int TE_V2_ABSENCE ; 
 int /*<<< orphan*/  TE_V2_FRAG_NONE ; 
 int TE_V2_NOTIF_HOST_EVENT_START ; 
 int TE_V2_START_IMMEDIATELY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*,struct iwl_mvm_time_event_data*,struct iwl_time_event_cmd*) ; 
 struct iwl_mvm_vif* FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct iwl_mvm *mvm,
				struct ieee80211_vif *vif,
				u32 duration, u32 apply_time)
{
	struct iwl_mvm_vif *mvmvif = FUNC6(vif);
	struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;
	struct iwl_time_event_cmd time_cmd = {};

	FUNC7(&mvm->mutex);

	if (te_data->running) {
		u32 id;

		FUNC8(&mvm->time_event_lock);
		id = te_data->id;
		FUNC9(&mvm->time_event_lock);

		if (id == TE_CHANNEL_SWITCH_PERIOD) {
			FUNC1(mvm, "CS period is already scheduled\n");
			return -EBUSY;
		}

		/*
		 * Remove the session protection time event to allow the
		 * channel switch. If we got here, we just heard a beacon so
		 * the session protection is not needed anymore anyway.
		 */
		FUNC4(mvm, mvmvif, te_data);
	}

	time_cmd.action = FUNC3(FW_CTXT_ACTION_ADD);
	time_cmd.id_and_color =
		FUNC3(FUNC0(mvmvif->id, mvmvif->color));
	time_cmd.id = FUNC3(TE_CHANNEL_SWITCH_PERIOD);
	time_cmd.apply_time = FUNC3(apply_time);
	time_cmd.max_frags = TE_V2_FRAG_NONE;
	time_cmd.duration = FUNC3(duration);
	time_cmd.repeat = 1;
	time_cmd.interval = FUNC3(1);
	time_cmd.policy = FUNC2(TE_V2_NOTIF_HOST_EVENT_START |
				      TE_V2_ABSENCE);
	if (!apply_time)
		time_cmd.policy |= FUNC2(TE_V2_START_IMMEDIATELY);

	return FUNC5(mvm, vif, te_data, &time_cmd);
}