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
 int ENODEV ; 
 int ERFKILL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 int /*<<< orphan*/  STATUS_TRANS_DEAD ; 
 int FUNC1 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 int FUNC2 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct iwl_trans *trans, struct iwl_host_cmd *cmd)
{
	/* Make sure the NIC is still alive in the bus */
	if (FUNC3(STATUS_TRANS_DEAD, &trans->status))
		return -ENODEV;

	if (!(cmd->flags & CMD_SEND_IN_RFKILL) &&
	    FUNC3(STATUS_RFKILL_OPMODE, &trans->status)) {
		FUNC0(trans, "Dropping CMD 0x%x: RF KILL\n",
				  cmd->id);
		return -ERFKILL;
	}

	if (cmd->flags & CMD_ASYNC)
		return FUNC1(trans, cmd);

	/* We still can fail on RFKILL that can be asserted while we wait */
	return FUNC2(trans, cmd);
}