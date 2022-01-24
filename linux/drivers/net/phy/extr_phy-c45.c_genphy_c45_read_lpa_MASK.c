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
struct phy_device {int pause; int asym_pause; int /*<<< orphan*/  lp_advertising; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Autoneg_BIT ; 
 int LPA_PAUSE_ASYM ; 
 int LPA_PAUSE_CAP ; 
 int /*<<< orphan*/  MDIO_AN_10GBT_STAT ; 
 int /*<<< orphan*/  MDIO_AN_LPA ; 
 int MDIO_AN_STAT1_COMPLETE ; 
 int MDIO_AN_STAT1_LPABLE ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_STAT1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct phy_device *phydev)
{
	int val;

	val = FUNC4(phydev, MDIO_MMD_AN, MDIO_STAT1);
	if (val < 0)
		return val;

	if (!(val & MDIO_AN_STAT1_COMPLETE)) {
		FUNC0(ETHTOOL_LINK_MODE_Autoneg_BIT,
				   phydev->lp_advertising);
		FUNC2(phydev->lp_advertising, 0);
		FUNC3(phydev->lp_advertising, 0);
		phydev->pause = 0;
		phydev->asym_pause = 0;

		return 0;
	}

	FUNC1(ETHTOOL_LINK_MODE_Autoneg_BIT, phydev->lp_advertising,
			 val & MDIO_AN_STAT1_LPABLE);

	/* Read the link partner's base page advertisement */
	val = FUNC4(phydev, MDIO_MMD_AN, MDIO_AN_LPA);
	if (val < 0)
		return val;

	FUNC3(phydev->lp_advertising, val);
	phydev->pause = val & LPA_PAUSE_CAP ? 1 : 0;
	phydev->asym_pause = val & LPA_PAUSE_ASYM ? 1 : 0;

	/* Read the link partner's 10G advertisement */
	val = FUNC4(phydev, MDIO_MMD_AN, MDIO_AN_10GBT_STAT);
	if (val < 0)
		return val;

	FUNC2(phydev->lp_advertising, val);

	return 0;
}