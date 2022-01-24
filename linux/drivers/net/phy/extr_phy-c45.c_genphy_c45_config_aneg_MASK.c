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
struct phy_device {scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int FUNC2 (struct phy_device*) ; 

int FUNC3(struct phy_device *phydev)
{
	bool changed = false;
	int ret;

	if (phydev->autoneg == AUTONEG_DISABLE)
		return FUNC2(phydev);

	ret = FUNC0(phydev);
	if (ret < 0)
		return ret;
	if (ret > 0)
		changed = true;

	return FUNC1(phydev, changed);
}