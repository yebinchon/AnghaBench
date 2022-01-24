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
struct net_device {int dummy; } ;
struct atl1c_adapter {int /*<<< orphan*/  common_task; int /*<<< orphan*/  work_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATL1C_WORK_EVENT_RESET ; 
 struct atl1c_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct atl1c_adapter *adapter = FUNC0(netdev);

	/* Do the reset outside of interrupt context */
	FUNC2(ATL1C_WORK_EVENT_RESET, &adapter->work_event);
	FUNC1(&adapter->common_task);
}