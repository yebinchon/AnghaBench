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
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_10000baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_2500baseT_Full_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_5000baseT_Full_BIT ; 
 int RTL_SUPPORTS_10000FULL ; 
 int RTL_SUPPORTS_2500FULL ; 
 int RTL_SUPPORTS_5000FULL ; 
 int FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int val;

	val = FUNC2(phydev, 0xa61, 0x13);
	if (val < 0)
		return val;

	FUNC1(ETHTOOL_LINK_MODE_2500baseT_Full_BIT,
			 phydev->supported, val & RTL_SUPPORTS_2500FULL);
	FUNC1(ETHTOOL_LINK_MODE_5000baseT_Full_BIT,
			 phydev->supported, val & RTL_SUPPORTS_5000FULL);
	FUNC1(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
			 phydev->supported, val & RTL_SUPPORTS_10000FULL);

	return FUNC0(phydev);
}