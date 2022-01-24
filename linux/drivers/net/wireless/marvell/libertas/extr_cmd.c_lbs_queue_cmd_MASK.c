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
struct lbs_private {scalar_t__ psstate; int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmdpendingq; } ;
struct cmd_ds_802_11_ps_mode {scalar_t__ action; } ;
struct cmd_ctrl_node {TYPE_1__* cmdbuf; int /*<<< orphan*/  list; scalar_t__ result; } ;
struct TYPE_2__ {int /*<<< orphan*/  command; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 scalar_t__ CMD_802_11_PS_MODE ; 
 scalar_t__ CMD_802_11_WAKEUP_CONFIRM ; 
 int /*<<< orphan*/  PS_MODE_ACTION_EXIT_PS ; 
 scalar_t__ PS_STATE_FULL_POWER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct lbs_private *priv,
			  struct cmd_ctrl_node *cmdnode)
{
	unsigned long flags;
	int addtail = 1;

	if (!cmdnode) {
		FUNC1("QUEUE_CMD: cmdnode is NULL\n");
		return;
	}
	if (!cmdnode->cmdbuf->size) {
		FUNC1("DNLD_CMD: cmd size is zero\n");
		return;
	}
	cmdnode->result = 0;

	/* Exit_PS command needs to be queued in the header always. */
	if (FUNC2(cmdnode->cmdbuf->command) == CMD_802_11_PS_MODE) {
		struct cmd_ds_802_11_ps_mode *psm = (void *)cmdnode->cmdbuf;

		if (psm->action == FUNC0(PS_MODE_ACTION_EXIT_PS)) {
			if (priv->psstate != PS_STATE_FULL_POWER)
				addtail = 0;
		}
	}

	if (FUNC2(cmdnode->cmdbuf->command) == CMD_802_11_WAKEUP_CONFIRM)
		addtail = 0;

	FUNC5(&priv->driver_lock, flags);

	if (addtail)
		FUNC4(&cmdnode->list, &priv->cmdpendingq);
	else
		FUNC3(&cmdnode->list, &priv->cmdpendingq);

	FUNC6(&priv->driver_lock, flags);

	FUNC1("QUEUE_CMD: inserted command 0x%04x into cmdpendingq\n",
		     FUNC2(cmdnode->cmdbuf->command));
}