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
struct phy_device {scalar_t__ autoneg; scalar_t__ asym_pause; scalar_t__ pause; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 

int FUNC4(struct phy_device *phydev)
{
	int ret;

	ret = FUNC0(phydev);
	if (ret)
		return ret;

	phydev->speed = SPEED_UNKNOWN;
	phydev->duplex = DUPLEX_UNKNOWN;
	phydev->pause = 0;
	phydev->asym_pause = 0;

	if (phydev->autoneg == AUTONEG_ENABLE) {
		ret = FUNC1(phydev);
		if (ret)
			return ret;

		FUNC3(phydev);
	} else {
		ret = FUNC2(phydev);
	}

	return ret;
}