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
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  BMCR_ANRESTART ; 
 int /*<<< orphan*/  BMCR_ISOLATE ; 
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*) ; 

int FUNC3(struct phy_device *phydev)
{
	u16 res = BMCR_RESET;
	int ret;

	if (phydev->autoneg == AUTONEG_ENABLE)
		res |= BMCR_ANRESTART;

	ret = FUNC1(phydev, MII_BMCR, BMCR_ISOLATE, res);
	if (ret < 0)
		return ret;

	ret = FUNC2(phydev);
	if (ret)
		return ret;

	/* BMCR may be reset to defaults */
	if (phydev->autoneg == AUTONEG_DISABLE)
		ret = FUNC0(phydev);

	return ret;
}