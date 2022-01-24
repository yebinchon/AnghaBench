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
struct mwifiex_adapter {int /*<<< orphan*/  cmd_free_q_lock; int /*<<< orphan*/  cmd_free_q; } ;
struct cmd_ctrl_node {int /*<<< orphan*/  list; scalar_t__ wait_q_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,struct cmd_ctrl_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct mwifiex_adapter *adapter,
			     struct cmd_ctrl_node *cmd_node)
{
	if (!cmd_node)
		return;

	if (cmd_node->wait_q_enabled)
		FUNC2(adapter, cmd_node);
	/* Clean the node */
	FUNC1(adapter, cmd_node);

	/* Insert node into cmd_free_q */
	FUNC3(&adapter->cmd_free_q_lock);
	FUNC0(&cmd_node->list, &adapter->cmd_free_q);
	FUNC4(&adapter->cmd_free_q_lock);
}