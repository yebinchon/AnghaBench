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
struct r6040_private {int old_duplex; scalar_t__ old_link; TYPE_1__* pdev; int /*<<< orphan*/  mii_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct r6040_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 struct phy_device* FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*) ; 
 int /*<<< orphan*/  r6040_adjust_link ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct r6040_private *lp = FUNC3(dev);
	struct phy_device *phydev = NULL;

	phydev = FUNC6(lp->mii_bus);
	if (!phydev) {
		FUNC2(&lp->pdev->dev, "no PHY found\n");
		return -ENODEV;
	}

	phydev = FUNC5(dev, FUNC8(phydev), &r6040_adjust_link,
			     PHY_INTERFACE_MODE_MII);

	if (FUNC0(phydev)) {
		FUNC2(&lp->pdev->dev, "could not attach to PHY\n");
		return FUNC1(phydev);
	}

	FUNC7(phydev, SPEED_100);

	lp->old_link = 0;
	lp->old_duplex = -1;

	FUNC4(phydev);

	return 0;
}