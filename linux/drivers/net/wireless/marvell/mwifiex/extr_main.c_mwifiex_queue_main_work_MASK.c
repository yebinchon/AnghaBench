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
struct mwifiex_adapter {int more_task_flag; int /*<<< orphan*/  main_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  main_proc_lock; scalar_t__ mwifiex_processing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct mwifiex_adapter *adapter)
{
	unsigned long flags;

	FUNC1(&adapter->main_proc_lock, flags);
	if (adapter->mwifiex_processing) {
		adapter->more_task_flag = true;
		FUNC2(&adapter->main_proc_lock, flags);
	} else {
		FUNC2(&adapter->main_proc_lock, flags);
		FUNC0(adapter->workqueue, &adapter->main_work);
	}
}