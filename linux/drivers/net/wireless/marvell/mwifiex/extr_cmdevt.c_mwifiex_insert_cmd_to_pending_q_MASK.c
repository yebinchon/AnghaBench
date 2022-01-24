#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct mwifiex_adapter {scalar_t__ ps_state; int /*<<< orphan*/  cmd_pending; int /*<<< orphan*/  cmd_pending_q_lock; int /*<<< orphan*/  cmd_pending_q; } ;
struct host_cmd_ds_802_11_ps_mode_enh {int /*<<< orphan*/  action; } ;
struct TYPE_4__ {struct host_cmd_ds_802_11_ps_mode_enh psmode_enh; } ;
struct host_cmd_ds_command {TYPE_2__ params; int /*<<< orphan*/  command; } ;
struct cmd_ctrl_node {int /*<<< orphan*/  list; TYPE_1__* cmd_skb; } ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 scalar_t__ DIS_AUTO_PS ; 
 scalar_t__ DIS_PS ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ HostCmd_CMD_802_11_PS_MODE_ENH ; 
 scalar_t__ PS_STATE_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(struct mwifiex_adapter *adapter,
				struct cmd_ctrl_node *cmd_node)
{
	struct host_cmd_ds_command *host_cmd = NULL;
	u16 command;
	bool add_tail = true;

	host_cmd = (struct host_cmd_ds_command *) (cmd_node->cmd_skb->data);
	if (!host_cmd) {
		FUNC5(adapter, ERROR, "QUEUE_CMD: host_cmd is NULL\n");
		return;
	}

	command = FUNC2(host_cmd->command);

	/* Exit_PS command needs to be queued in the header always. */
	if (command == HostCmd_CMD_802_11_PS_MODE_ENH) {
		struct host_cmd_ds_802_11_ps_mode_enh *pm =
						&host_cmd->params.psmode_enh;
		if ((FUNC2(pm->action) == DIS_PS) ||
		    (FUNC2(pm->action) == DIS_AUTO_PS)) {
			if (adapter->ps_state != PS_STATE_AWAKE)
				add_tail = false;
		}
	}

	FUNC6(&adapter->cmd_pending_q_lock);
	if (add_tail)
		FUNC4(&cmd_node->list, &adapter->cmd_pending_q);
	else
		FUNC3(&cmd_node->list, &adapter->cmd_pending_q);
	FUNC7(&adapter->cmd_pending_q_lock);

	FUNC0(&adapter->cmd_pending);
	FUNC5(adapter, CMD,
		    "cmd: QUEUE_CMD: cmd=%#x, cmd_pending=%d\n",
		command, FUNC1(&adapter->cmd_pending));
}