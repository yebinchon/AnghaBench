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
typedef  int u32 ;
struct lbs_private {struct cmd_ctrl_node* cmd_array; } ;
struct cmd_ctrl_node {int /*<<< orphan*/  cmdwait_q; void* cmdbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LBS_CMD_BUFFER_SIZE ; 
 int LBS_NUM_CMD_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct lbs_private *priv)
{
	int ret = 0;
	u32 bufsize;
	u32 i;
	struct cmd_ctrl_node *cmdarray;

	/* Allocate and initialize the command array */
	bufsize = sizeof(struct cmd_ctrl_node) * LBS_NUM_CMD_BUFFERS;
	if (!(cmdarray = FUNC1(bufsize, GFP_KERNEL))) {
		FUNC3("ALLOC_CMD_BUF: tempcmd_array is NULL\n");
		ret = -1;
		goto done;
	}
	priv->cmd_array = cmdarray;

	/* Allocate and initialize each command buffer in the command array */
	for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
		cmdarray[i].cmdbuf = FUNC1(LBS_CMD_BUFFER_SIZE, GFP_KERNEL);
		if (!cmdarray[i].cmdbuf) {
			FUNC3("ALLOC_CMD_BUF: ptempvirtualaddr is NULL\n");
			ret = -1;
			goto done;
		}
	}

	for (i = 0; i < LBS_NUM_CMD_BUFFERS; i++) {
		FUNC0(&cmdarray[i].cmdwait_q);
		FUNC2(priv, &cmdarray[i]);
	}
	ret = 0;

done:
	return ret;
}