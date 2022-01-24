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
struct phy_device {scalar_t__ interface; } ;

/* Variables and functions */
 scalar_t__ PHY_INTERFACE_MODE_RTBI ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*) ; 
 scalar_t__ FUNC5 (struct phy_device*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int err;

	if (FUNC5(phydev)) {
		err = FUNC1(phydev);
		if (err < 0)
			return err;
	}

	if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
		err = FUNC3(phydev);
		if (err < 0)
			return err;
	}

	if (phydev->interface == PHY_INTERFACE_MODE_RTBI) {
		err = FUNC2(phydev);
		if (err < 0)
			return err;
	}

	err = FUNC4(phydev);
	if (err < 0)
		return err;

	return FUNC0(phydev);
}