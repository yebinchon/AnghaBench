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
struct phy_device {int dev_flags; } ;

/* Variables and functions */
 int MARVELL_PHY_M1118_DNS323_LEDS ; 
 int /*<<< orphan*/  MII_MARVELL_COPPER_PAGE ; 
 int /*<<< orphan*/  MII_MARVELL_LED_PAGE ; 
 int /*<<< orphan*/  MII_MARVELL_MSCR_PAGE ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int err;

	/* Change address */
	err = FUNC2(phydev, MII_MARVELL_MSCR_PAGE);
	if (err < 0)
		return err;

	/* Enable 1000 Mbit */
	err = FUNC3(phydev, 0x15, 0x1070);
	if (err < 0)
		return err;

	/* Change address */
	err = FUNC2(phydev, MII_MARVELL_LED_PAGE);
	if (err < 0)
		return err;

	/* Adjust LED Control */
	if (phydev->dev_flags & MARVELL_PHY_M1118_DNS323_LEDS)
		err = FUNC3(phydev, 0x10, 0x1100);
	else
		err = FUNC3(phydev, 0x10, 0x021e);
	if (err < 0)
		return err;

	err = FUNC1(phydev);
	if (err < 0)
		return err;

	/* Reset address */
	err = FUNC2(phydev, MII_MARVELL_COPPER_PAGE);
	if (err < 0)
		return err;

	return FUNC0(phydev);
}