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
 int /*<<< orphan*/  MII_MARVELL_COPPER_PAGE ; 
 int /*<<< orphan*/  MII_MARVELL_FIBER_PAGE ; 
 scalar_t__ PHY_INTERFACE_MODE_SGMII ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int err;

	err = FUNC2(phydev, MII_MARVELL_COPPER_PAGE);
	if (err < 0)
		goto error;

	/* Configure the copper link first */
	err = FUNC0(phydev);
	if (err < 0)
		goto error;

	/* Do not touch the fiber page if we're in copper->sgmii mode */
	if (phydev->interface == PHY_INTERFACE_MODE_SGMII)
		return 0;

	/* Then the fiber link */
	err = FUNC2(phydev, MII_MARVELL_FIBER_PAGE);
	if (err < 0)
		goto error;

	err = FUNC1(phydev);
	if (err < 0)
		goto error;

	return FUNC2(phydev, MII_MARVELL_COPPER_PAGE);

error:
	FUNC2(phydev, MII_MARVELL_COPPER_PAGE);
	return err;
}