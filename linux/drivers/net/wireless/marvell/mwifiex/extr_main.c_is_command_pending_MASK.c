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
struct mwifiex_adapter {int /*<<< orphan*/  cmd_pending_q_lock; int /*<<< orphan*/  cmd_pending_q; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mwifiex_adapter *adapter)
{
	int is_cmd_pend_q_empty;

	FUNC1(&adapter->cmd_pending_q_lock);
	is_cmd_pend_q_empty = FUNC0(&adapter->cmd_pending_q);
	FUNC2(&adapter->cmd_pending_q_lock);

	return !is_cmd_pend_q_empty;
}