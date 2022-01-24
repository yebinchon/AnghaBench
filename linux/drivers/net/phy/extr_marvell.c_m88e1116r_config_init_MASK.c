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
struct phy_device {int /*<<< orphan*/  mdix_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_MARVELL_COPPER_PAGE ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*,int,int) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct phy_device*) ; 

__attribute__((used)) static int FUNC8(struct phy_device *phydev)
{
	int err;

	err = FUNC0(phydev);
	if (err < 0)
		return err;

	FUNC6(500);

	err = FUNC4(phydev, MII_MARVELL_COPPER_PAGE);
	if (err < 0)
		return err;

	err = FUNC5(phydev, phydev->mdix_ctrl);
	if (err < 0)
		return err;

	err = FUNC3(phydev, true, 8);
	if (err < 0)
		return err;

	if (FUNC7(phydev)) {
		err = FUNC1(phydev);
		if (err < 0)
			return err;
	}

	err = FUNC0(phydev);
	if (err < 0)
		return err;

	return FUNC2(phydev);
}