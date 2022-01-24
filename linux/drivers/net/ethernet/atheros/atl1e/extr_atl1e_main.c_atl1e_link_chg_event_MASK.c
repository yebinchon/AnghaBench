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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int /*<<< orphan*/  link_chg_task; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  hw; struct net_device* netdev; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct atl1e_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	u16 phy_data = 0;
	u16 link_up = 0;

	FUNC5(&adapter->mdio_lock);
	FUNC0(&adapter->hw, MII_BMSR, &phy_data);
	FUNC0(&adapter->hw, MII_BMSR, &phy_data);
	FUNC6(&adapter->mdio_lock);
	link_up = phy_data & BMSR_LSTATUS;
	/* notify upper layer link down ASAP */
	if (!link_up) {
		if (FUNC2(netdev)) {
			/* old link state: Up */
			FUNC1(netdev, "NIC Link is Down\n");
			adapter->link_speed = SPEED_0;
			FUNC3(netdev);
		}
	}
	FUNC4(&adapter->link_chg_task);
}