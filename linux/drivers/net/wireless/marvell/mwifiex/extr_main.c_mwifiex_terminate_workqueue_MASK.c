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
struct mwifiex_adapter {int /*<<< orphan*/ * rx_workqueue; int /*<<< orphan*/ * workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mwifiex_adapter *adapter)
{
	if (adapter->workqueue) {
		FUNC1(adapter->workqueue);
		FUNC0(adapter->workqueue);
		adapter->workqueue = NULL;
	}

	if (adapter->rx_workqueue) {
		FUNC1(adapter->rx_workqueue);
		FUNC0(adapter->rx_workqueue);
		adapter->rx_workqueue = NULL;
	}
}