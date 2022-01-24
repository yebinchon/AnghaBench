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
struct lbtf_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  cmdpendingq; } ;
struct cmd_ctrl_node {TYPE_1__* cmdbuf; int /*<<< orphan*/  list; scalar_t__ result; } ;
struct TYPE_2__ {int /*<<< orphan*/  command; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBTF_DEB_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct lbtf_private *priv,
			  struct cmd_ctrl_node *cmdnode)
{
	unsigned long flags;
	FUNC0(LBTF_DEB_HOST);

	if (!cmdnode) {
		FUNC1("QUEUE_CMD: cmdnode is NULL\n");
		goto qcmd_done;
	}

	if (!cmdnode->cmdbuf->size) {
		FUNC1("DNLD_CMD: cmd size is zero\n");
		goto qcmd_done;
	}

	cmdnode->result = 0;
	FUNC5(&priv->driver_lock, flags);
	FUNC4(&cmdnode->list, &priv->cmdpendingq);
	FUNC6(&priv->driver_lock, flags);

	FUNC1("QUEUE_CMD: inserted command 0x%04x into cmdpendingq\n",
		     FUNC3(cmdnode->cmdbuf->command));

qcmd_done:
	FUNC2(LBTF_DEB_HOST);
}