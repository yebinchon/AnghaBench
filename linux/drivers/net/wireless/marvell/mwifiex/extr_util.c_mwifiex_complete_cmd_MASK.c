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
struct TYPE_2__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  status; } ;
struct mwifiex_adapter {TYPE_1__ cmd_wait_q; } ;
struct cmd_ctrl_node {int* condition; int /*<<< orphan*/  wait_q_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mwifiex_adapter *adapter,
			 struct cmd_ctrl_node *cmd_node)
{
	FUNC0(!cmd_node->wait_q_enabled);
	FUNC1(adapter, CMD, "cmd completed: status=%d\n",
		    adapter->cmd_wait_q.status);

	*cmd_node->condition = true;
	FUNC2(&adapter->cmd_wait_q.wait);

	return 0;
}