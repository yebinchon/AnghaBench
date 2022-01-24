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
struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {int /*<<< orphan*/  action; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MAC_CONTEXT_CMD ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_mac_ctx_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iwl_mvm *mvm,
				     struct iwl_mac_ctx_cmd *cmd)
{
	int ret = FUNC1(mvm, MAC_CONTEXT_CMD, 0,
				       sizeof(*cmd), cmd);
	if (ret)
		FUNC0(mvm, "Failed to send MAC context (action:%d): %d\n",
			FUNC2(cmd->action), ret);
	return ret;
}