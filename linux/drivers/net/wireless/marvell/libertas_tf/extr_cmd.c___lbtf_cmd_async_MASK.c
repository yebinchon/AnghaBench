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
struct lbtf_private {int seqnum; int /*<<< orphan*/  cmd_work; scalar_t__ surpriseremoved; } ;
struct cmd_header {int dummy; } ;
struct cmd_ctrl_node {int (* callback ) (struct lbtf_private*,unsigned long,struct cmd_header*) ;unsigned long callback_arg; scalar_t__ cmdwaitqwoken; TYPE_1__* cmdbuf; } ;
struct TYPE_2__ {scalar_t__ result; void* seqnum; void* size; void* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  ENOENT ; 
 struct cmd_ctrl_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LBTF_DEB_HOST ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct cmd_ctrl_node*) ; 
 struct cmd_ctrl_node* FUNC5 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbtf_private*,struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  lbtf_wq ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct cmd_header*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cmd_ctrl_node *FUNC9(struct lbtf_private *priv,
	uint16_t command, struct cmd_header *in_cmd, int in_cmd_size,
	int (*callback)(struct lbtf_private *, unsigned long,
			struct cmd_header *),
	unsigned long callback_arg)
{
	struct cmd_ctrl_node *cmdnode;

	FUNC2(LBTF_DEB_HOST);

	if (priv->surpriseremoved) {
		FUNC3("PREP_CMD: card removed\n");
		cmdnode = FUNC0(-ENOENT);
		goto done;
	}

	cmdnode = FUNC5(priv);
	if (cmdnode == NULL) {
		FUNC3("PREP_CMD: cmdnode is NULL\n");

		/* Wake up main thread to execute next command */
		FUNC8(lbtf_wq, &priv->cmd_work);
		cmdnode = FUNC0(-ENOBUFS);
		goto done;
	}

	cmdnode->callback = callback;
	cmdnode->callback_arg = callback_arg;

	/* Copy the incoming command to the buffer */
	FUNC7(cmdnode->cmdbuf, in_cmd, in_cmd_size);

	/* Set sequence number, clean result, move to buffer */
	priv->seqnum++;
	cmdnode->cmdbuf->command = FUNC1(command);
	cmdnode->cmdbuf->size    = FUNC1(in_cmd_size);
	cmdnode->cmdbuf->seqnum  = FUNC1(priv->seqnum);
	cmdnode->cmdbuf->result  = 0;

	FUNC3("PREP_CMD: command 0x%04x\n", command);

	cmdnode->cmdwaitqwoken = 0;
	FUNC6(priv, cmdnode);
	FUNC8(lbtf_wq, &priv->cmd_work);

 done:
	FUNC4(LBTF_DEB_HOST, "ret %p", cmdnode);
	return cmdnode;
}