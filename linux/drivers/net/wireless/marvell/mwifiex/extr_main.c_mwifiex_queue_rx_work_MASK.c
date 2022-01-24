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
struct mwifiex_adapter {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_workqueue; int /*<<< orphan*/  rx_proc_lock; scalar_t__ rx_processing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mwifiex_adapter *adapter)
{
	FUNC1(&adapter->rx_proc_lock);
	if (adapter->rx_processing) {
		FUNC2(&adapter->rx_proc_lock);
	} else {
		FUNC2(&adapter->rx_proc_lock);
		FUNC0(adapter->rx_workqueue, &adapter->rx_work);
	}
}