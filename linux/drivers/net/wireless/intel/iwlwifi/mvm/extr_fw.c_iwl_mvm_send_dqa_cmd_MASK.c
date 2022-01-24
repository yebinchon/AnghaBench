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
struct iwl_mvm {int dummy; } ;
struct iwl_dqa_enable_cmd {int /*<<< orphan*/  cmd_queue; } ;
typedef  int /*<<< orphan*/  dqa_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_PATH_GROUP ; 
 int /*<<< orphan*/  DQA_ENABLE_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_MVM_DQA_CMD_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_dqa_enable_cmd*) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm)
{
	struct iwl_dqa_enable_cmd dqa_cmd = {
		.cmd_queue = FUNC2(IWL_MVM_DQA_CMD_QUEUE),
	};
	u32 cmd_id = FUNC3(DQA_ENABLE_CMD, DATA_PATH_GROUP, 0);
	int ret;

	ret = FUNC4(mvm, cmd_id, 0, sizeof(dqa_cmd), &dqa_cmd);
	if (ret)
		FUNC1(mvm, "Failed to send DQA enabling command: %d\n", ret);
	else
		FUNC0(mvm, "Working in DQA mode\n");

	return ret;
}