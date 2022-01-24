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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  time_cmd ;
struct iwl_time_event_cmd {void* id; void* id_and_color; void* action; } ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIME_EVENT_CMD ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_mvm_time_event_data*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_time_event_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

void FUNC7(struct iwl_mvm *mvm,
			       struct iwl_mvm_vif *mvmvif,
			       struct iwl_mvm_time_event_data *te_data)
{
	struct iwl_time_event_cmd time_cmd = {};
	u32 uid;
	int ret;

	if (!FUNC3(mvm, te_data, &uid))
		return;

	/* When we remove a TE, the UID is to be set in the id field */
	time_cmd.id = FUNC4(uid);
	time_cmd.action = FUNC4(FW_CTXT_ACTION_REMOVE);
	time_cmd.id_and_color =
		FUNC4(FUNC0(mvmvif->id, mvmvif->color));

	FUNC1(mvm, "Removing TE 0x%x\n", FUNC6(time_cmd.id));
	ret = FUNC5(mvm, TIME_EVENT_CMD, 0,
				   sizeof(time_cmd), &time_cmd);
	if (FUNC2(ret))
		return;
}