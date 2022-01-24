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
struct atl2_adapter {int link_duplex; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  cfg_phy; int /*<<< orphan*/  phy_config_timer; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  __ATL2_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct atl2_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer */
	FUNC7(__ATL2_DOWN, &adapter->flags);

	FUNC6(netdev);

	/* reset MAC to disable all RX/TX */
	FUNC1(&adapter->hw);
	FUNC4(1);

	FUNC0(adapter);

	FUNC3(&adapter->watchdog_timer);
	FUNC3(&adapter->phy_config_timer);
	FUNC2(0, &adapter->cfg_phy);

	FUNC5(netdev);
	adapter->link_speed = SPEED_0;
	adapter->link_duplex = -1;
}