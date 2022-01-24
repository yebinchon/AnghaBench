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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  lp_advertising; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  MDIO_AN_RX_LP_STAT1 ; 
 int MDIO_AN_RX_LP_STAT1_1000BASET_FULL ; 
 int MDIO_AN_RX_LP_STAT1_1000BASET_HALF ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int val;

	if (phydev->autoneg == AUTONEG_ENABLE) {
		val = FUNC2(phydev, MDIO_MMD_AN, MDIO_AN_RX_LP_STAT1);
		if (val < 0)
			return val;

		FUNC1(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
				 phydev->lp_advertising,
				 val & MDIO_AN_RX_LP_STAT1_1000BASET_FULL);
		FUNC1(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
				 phydev->lp_advertising,
				 val & MDIO_AN_RX_LP_STAT1_1000BASET_HALF);
	}

	return FUNC0(phydev);
}