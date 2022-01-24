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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  advertising; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Asym_Pause_BIT ; 
 int /*<<< orphan*/  ETHTOOL_LINK_MODE_Pause_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oldadv ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 

void FUNC7(struct phy_device *phydev, bool rx, bool tx)
{
	FUNC0(oldadv);

	FUNC3(oldadv, phydev->advertising);

	FUNC2(ETHTOOL_LINK_MODE_Pause_BIT,
			   phydev->advertising);
	FUNC2(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
			   phydev->advertising);

	if (rx) {
		FUNC5(ETHTOOL_LINK_MODE_Pause_BIT,
				 phydev->advertising);
		FUNC5(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
				 phydev->advertising);
	}

	if (tx)
		FUNC1(ETHTOOL_LINK_MODE_Asym_Pause_BIT,
				    phydev->advertising);

	if (!FUNC4(oldadv, phydev->advertising) &&
	    phydev->autoneg)
		FUNC6(phydev);
}