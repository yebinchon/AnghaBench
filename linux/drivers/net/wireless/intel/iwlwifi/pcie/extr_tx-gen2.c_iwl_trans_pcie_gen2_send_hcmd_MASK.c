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
struct iwl_trans {int /*<<< orphan*/  status; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_SEND_IN_RFKILL ; 
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int ERFKILL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 int FUNC5 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct iwl_trans *trans,
				  struct iwl_host_cmd *cmd)
{
	if (!(cmd->flags & CMD_SEND_IN_RFKILL) &&
	    FUNC6(STATUS_RFKILL_OPMODE, &trans->status)) {
		FUNC0(trans, "Dropping CMD 0x%x: RF KILL\n",
				  cmd->id);
		return -ERFKILL;
	}

	if (cmd->flags & CMD_ASYNC) {
		int ret;

		/* An asynchronous command can not expect an SKB to be set. */
		if (FUNC2(cmd->flags & CMD_WANT_SKB))
			return -EINVAL;

		ret = FUNC4(trans, cmd);
		if (ret < 0) {
			FUNC1(trans,
				"Error sending %s: enqueue_hcmd failed: %d\n",
				FUNC3(trans, cmd->id), ret);
			return ret;
		}
		return 0;
	}

	return FUNC5(trans, cmd);
}