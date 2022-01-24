#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct phy_device {scalar_t__ state; int /*<<< orphan*/  lp_advertising; int /*<<< orphan*/  advertising; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan743x_adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  duplex; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  ksettings ;

/* Variables and functions */
 scalar_t__ PHY_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int) ; 
 struct lan743x_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev)
{
	struct lan743x_adapter *adapter = FUNC4(netdev);
	struct phy_device *phydev = netdev->phydev;

	FUNC6(phydev);
	if (phydev->state == PHY_RUNNING) {
		struct ethtool_link_ksettings ksettings;
		int remote_advertisement = 0;
		int local_advertisement = 0;

		FUNC3(&ksettings, 0, sizeof(ksettings));
		FUNC5(netdev, &ksettings);
		local_advertisement =
			FUNC2(phydev->advertising);
		remote_advertisement =
			FUNC2(phydev->lp_advertising);

		FUNC0(adapter,
					       ksettings.base.duplex,
					       local_advertisement,
					       remote_advertisement);
		FUNC1(adapter, ksettings.base.speed);
	}
}