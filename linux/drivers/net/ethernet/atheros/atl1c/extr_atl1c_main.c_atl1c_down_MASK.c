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
struct atl1c_adapter {int link_duplex; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  hw; int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; scalar_t__ work_event; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  __AT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct atl1c_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	FUNC0(adapter);
	adapter->work_event = 0; /* clear all event */
	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer */
	FUNC9(__AT_DOWN, &adapter->flags);
	FUNC8(netdev);
	FUNC7(&adapter->napi);
	FUNC3(adapter);
	FUNC2(adapter);
	/* disable ASPM if device inactive */
	FUNC1(&adapter->hw);
	/* reset MAC to disable all RX/TX */
	FUNC5(&adapter->hw);
	FUNC6(1);

	adapter->link_speed = SPEED_0;
	adapter->link_duplex = -1;
	FUNC4(adapter);
}