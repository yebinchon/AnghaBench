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
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int err;

	/* Take care of errata E0 & E1 */
	err = FUNC3(phydev, 0x1d, 0x001b);
	if (err < 0)
		return err;

	err = FUNC3(phydev, 0x1e, 0x418f);
	if (err < 0)
		return err;

	err = FUNC3(phydev, 0x1d, 0x0016);
	if (err < 0)
		return err;

	err = FUNC3(phydev, 0x1e, 0xa2da);
	if (err < 0)
		return err;

	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
		err = FUNC0(phydev);
		if (err < 0)
			return err;
	}

	if (phydev->interface == PHY_INTERFACE_MODE_SGMII) {
		err = FUNC1(phydev);
		if (err < 0)
			return err;
	}

	err = FUNC2(phydev);
	if (err < 0)
		return err;

	return 0;
}