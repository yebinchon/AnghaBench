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
struct ena_com_admin_queue {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  outstanding_cmds; } ;
struct ena_com_dev {struct ena_com_admin_queue admin_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_POLL_MS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct ena_com_dev *ena_dev)
{
	struct ena_com_admin_queue *admin_queue = &ena_dev->admin_queue;
	unsigned long flags = 0;

	FUNC2(&admin_queue->q_lock, flags);
	while (FUNC0(&admin_queue->outstanding_cmds) != 0) {
		FUNC3(&admin_queue->q_lock, flags);
		FUNC1(ENA_POLL_MS);
		FUNC2(&admin_queue->q_lock, flags);
	}
	FUNC3(&admin_queue->q_lock, flags);
}