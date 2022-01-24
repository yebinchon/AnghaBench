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
typedef  scalar_t__ u16 ;
struct iwl_mvm_vif {int /*<<< orphan*/  color; int /*<<< orphan*/  id; } ;
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_hs20_roc_req {void* event_unique_id; void* id_and_color; void* action; } ;
typedef  int /*<<< orphan*/  aux_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_CTXT_ACTION_REMOVE ; 
 int /*<<< orphan*/  HOT_SPOT_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_mvm_time_event_data*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iwl_mvm*) ; 
 int FUNC6 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct iwl_hs20_roc_req*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void FUNC8(struct iwl_mvm *mvm,
				      struct iwl_mvm_vif *mvmvif,
				      struct iwl_mvm_time_event_data *te_data)
{
	struct iwl_hs20_roc_req aux_cmd = {};
	u16 len = sizeof(aux_cmd) - FUNC5(mvm);

	u32 uid;
	int ret;

	if (!FUNC3(mvm, te_data, &uid))
		return;

	aux_cmd.event_unique_id = FUNC4(uid);
	aux_cmd.action = FUNC4(FW_CTXT_ACTION_REMOVE);
	aux_cmd.id_and_color =
		FUNC4(FUNC0(mvmvif->id, mvmvif->color));
	FUNC1(mvm, "Removing BSS AUX ROC TE 0x%x\n",
		     FUNC7(aux_cmd.event_unique_id));
	ret = FUNC6(mvm, HOT_SPOT_CMD, 0,
				   len, &aux_cmd);

	if (FUNC2(ret))
		return;
}