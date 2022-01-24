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
typedef  int uint16_t ;
struct lbs_private {int /*<<< orphan*/  waitq; scalar_t__ is_deep_sleep; int /*<<< orphan*/  is_auto_deep_sleep_enabled; scalar_t__ surpriseremoved; } ;
struct cmd_header {int dummy; } ;
struct cmd_ctrl_node {int (* callback ) (struct lbs_private*,unsigned long,struct cmd_header*) ;unsigned long callback_arg; scalar_t__ cmdwaitqwoken; TYPE_1__* cmdbuf; } ;
struct TYPE_2__ {scalar_t__ result; void* size; void* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  ENOENT ; 
 struct cmd_ctrl_node* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct cmd_ctrl_node* FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*,struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct cmd_header*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct cmd_ctrl_node *FUNC8(struct lbs_private *priv,
	uint16_t command, struct cmd_header *in_cmd, int in_cmd_size,
	int (*callback)(struct lbs_private *, unsigned long, struct cmd_header *),
	unsigned long callback_arg)
{
	struct cmd_ctrl_node *cmdnode;

	if (priv->surpriseremoved) {
		FUNC3("PREP_CMD: card removed\n");
		cmdnode = FUNC0(-ENOENT);
		goto done;
	}

	/* No commands are allowed in Deep Sleep until we toggle the GPIO
	 * to wake up the card and it has signaled that it's ready.
	 */
	if (!priv->is_auto_deep_sleep_enabled) {
		if (priv->is_deep_sleep) {
			FUNC2("command not allowed in deep sleep\n");
			cmdnode = FUNC0(-EBUSY);
			goto done;
		}
	}

	cmdnode = FUNC4(priv);
	if (cmdnode == NULL) {
		FUNC3("PREP_CMD: cmdnode is NULL\n");

		/* Wake up main thread to execute next command */
		FUNC7(&priv->waitq);
		cmdnode = FUNC0(-ENOBUFS);
		goto done;
	}

	cmdnode->callback = callback;
	cmdnode->callback_arg = callback_arg;

	/* Copy the incoming command to the buffer */
	FUNC6(cmdnode->cmdbuf, in_cmd, in_cmd_size);

	/* Set command, clean result, move to buffer */
	cmdnode->cmdbuf->command = FUNC1(command);
	cmdnode->cmdbuf->size    = FUNC1(in_cmd_size);
	cmdnode->cmdbuf->result  = 0;

	FUNC3("PREP_CMD: command 0x%04x\n", command);

	cmdnode->cmdwaitqwoken = 0;
	FUNC5(priv, cmdnode);
	FUNC7(&priv->waitq);

 done:
	return cmdnode;
}