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
struct phy_device {int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BMSR_100FULL ; 
 int BMSR_100HALF ; 
 int BMSR_10FULL ; 
 int BMSR_10HALF ; 
 int BMSR_ANEGCAPABLE ; 
 int BMSR_ESTATEN ; 
 int ESTATUS_1000_TFULL ; 
 int ESTATUS_1000_THALF ; 
 int ESTATUS_1000_XFULL ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_1000baseX_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_100baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_100baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10baseT_Half_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Autoneg_BIT ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_ESTATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_basic_ports_array ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct phy_device *phydev)
{
	int val;

	FUNC2(phy_basic_ports_array,
			       FUNC0(phy_basic_ports_array),
			       phydev->supported);

	val = FUNC3(phydev, MII_BMSR);
	if (val < 0)
		return val;

	FUNC1(ETHTOOL_LINK_MODE_Autoneg_BIT, phydev->supported,
			 val & BMSR_ANEGCAPABLE);

	FUNC1(ETHTOOL_LINK_MODE_100baseT_Full_BIT, phydev->supported,
			 val & BMSR_100FULL);
	FUNC1(ETHTOOL_LINK_MODE_100baseT_Half_BIT, phydev->supported,
			 val & BMSR_100HALF);
	FUNC1(ETHTOOL_LINK_MODE_10baseT_Full_BIT, phydev->supported,
			 val & BMSR_10FULL);
	FUNC1(ETHTOOL_LINK_MODE_10baseT_Half_BIT, phydev->supported,
			 val & BMSR_10HALF);

	if (val & BMSR_ESTATEN) {
		val = FUNC3(phydev, MII_ESTATUS);
		if (val < 0)
			return val;

		FUNC1(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
				 phydev->supported, val & ESTATUS_1000_TFULL);
		FUNC1(ETHTOOL_LINK_MODE_1000baseT_Half_BIT,
				 phydev->supported, val & ESTATUS_1000_THALF);
		FUNC1(ETHTOOL_LINK_MODE_1000baseX_Full_BIT,
				 phydev->supported, val & ESTATUS_1000_XFULL);
	}

	return 0;
}