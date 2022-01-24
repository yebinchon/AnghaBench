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
struct mwifiex_adapter {int /*<<< orphan*/  cmd_pending; } ;
struct host_cmd_ds_command {int /*<<< orphan*/  command; } ;
struct cmd_ctrl_node {TYPE_1__* cmd_skb; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*,struct cmd_ctrl_node*) ; 

void FUNC5(struct mwifiex_adapter *adapter,
			      struct cmd_ctrl_node *cmd_node)
{
	struct host_cmd_ds_command *host_cmd = (void *)cmd_node->cmd_skb->data;

	FUNC4(adapter, cmd_node);

	FUNC0(&adapter->cmd_pending);
	FUNC3(adapter, CMD,
		    "cmd: FREE_CMD: cmd=%#x, cmd_pending=%d\n",
		FUNC2(host_cmd->command),
		FUNC1(&adapter->cmd_pending));
}