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
struct iwl_time_event_notif {int /*<<< orphan*/  status; int /*<<< orphan*/  action; } ;
struct iwl_mvm_time_event_data {int id; int /*<<< orphan*/  vif; } ;
struct iwl_mvm {int /*<<< orphan*/  fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_time_event {TYPE_1__* time_events; } ;
struct TYPE_2__ {int /*<<< orphan*/  status_bitmap; int /*<<< orphan*/  action_bitmap; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_TIME_EVENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwl_fw_dbg_trigger_tlv*,char*,int,int,int) ; 
 struct iwl_fw_dbg_trigger_tlv* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iwl_mvm *mvm,
				     struct iwl_time_event_notif *notif,
				     struct iwl_mvm_time_event_data *te_data)
{
	struct iwl_fw_dbg_trigger_tlv *trig;
	struct iwl_fw_dbg_trigger_time_event *te_trig;
	int i;

	trig = FUNC4(&mvm->fwrt,
				     FUNC2(te_data->vif),
				     FW_DBG_TRIGGER_TIME_EVENT);
	if (!trig)
		return;

	te_trig = (void *)trig->data;

	for (i = 0; i < FUNC0(te_trig->time_events); i++) {
		u32 trig_te_id = FUNC5(te_trig->time_events[i].id);
		u32 trig_action_bitmap =
			FUNC5(te_trig->time_events[i].action_bitmap);
		u32 trig_status_bitmap =
			FUNC5(te_trig->time_events[i].status_bitmap);

		if (trig_te_id != te_data->id ||
		    !(trig_action_bitmap & FUNC5(notif->action)) ||
		    !(trig_status_bitmap & FUNC1(FUNC5(notif->status))))
			continue;

		FUNC3(&mvm->fwrt, trig,
					"Time event %d Action 0x%x received status: %d",
					te_data->id,
					FUNC5(notif->action),
					FUNC5(notif->status));
		break;
	}
}