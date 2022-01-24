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
struct phy_device {int /*<<< orphan*/  autoneg; } ;
struct net_device {int dummy; } ;
struct et131x_adapter {TYPE_1__* pdev; int /*<<< orphan*/  mii_bus; } ;
struct TYPE_2__ {scalar_t__ device; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int ENODEV ; 
 scalar_t__ ET131X_PCI_DEVICE_ID_FAST ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  et131x_adjust_link ; 
 struct et131x_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct phy_device* FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev)
{
	struct et131x_adapter *adapter = FUNC3(netdev);
	struct  phy_device *phydev = NULL;

	phydev = FUNC6(adapter->mii_bus);
	if (!phydev) {
		FUNC2(&adapter->pdev->dev, "no PHY found\n");
		return -ENODEV;
	}

	phydev = FUNC5(netdev, FUNC8(phydev),
			     &et131x_adjust_link, PHY_INTERFACE_MODE_MII);

	if (FUNC0(phydev)) {
		FUNC2(&adapter->pdev->dev, "Could not attach to PHY\n");
		return FUNC1(phydev);
	}

	FUNC7(phydev, SPEED_100);

	if (adapter->pdev->device != ET131X_PCI_DEVICE_ID_FAST)
		FUNC7(phydev, SPEED_1000);

	phydev->autoneg = AUTONEG_ENABLE;

	FUNC4(phydev);

	return 0;
}