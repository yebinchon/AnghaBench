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
struct smsc9420_pdata {int last_duplex; int last_carrier; int /*<<< orphan*/  mii_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct smsc9420_pdata* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 
 struct phy_device* FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct phy_device*) ; 
 int /*<<< orphan*/  smsc9420_phy_adjust_link ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC5(dev);
	struct phy_device *phydev = NULL;

	FUNC0(dev->phydev);

	/* Device only supports internal PHY at address 1 */
	phydev = FUNC3(pd->mii_bus, 1);
	if (!phydev) {
		FUNC4(dev, "no PHY found at address 1\n");
		return -ENODEV;
	}

	phydev = FUNC7(dev, FUNC10(phydev),
			     smsc9420_phy_adjust_link, PHY_INTERFACE_MODE_MII);

	if (FUNC1(phydev)) {
		FUNC4(dev, "Could not attach to PHY\n");
		return FUNC2(phydev);
	}

	FUNC8(phydev, SPEED_100);

	/* mask with MAC supported features */
	FUNC9(phydev);

	FUNC6(phydev);

	pd->last_duplex = -1;
	pd->last_carrier = -1;

	return 0;
}