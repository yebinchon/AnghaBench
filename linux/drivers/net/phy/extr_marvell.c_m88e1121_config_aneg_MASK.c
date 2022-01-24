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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  mdix_ctrl; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct phy_device*) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	int changed = 0;
	int err = 0;

	if (FUNC4(phydev)) {
		err = FUNC2(phydev);
		if (err < 0)
			return err;
	}

	err = FUNC3(phydev, phydev->mdix_ctrl);
	if (err < 0)
		return err;

	changed = err;

	err = FUNC0(phydev);
	if (err < 0)
		return err;

	if (phydev->autoneg != AUTONEG_ENABLE || changed) {
		/* A software reset is used to ensure a "commit" of the
		 * changes is done.
		 */
		err = FUNC1(phydev);
		if (err < 0)
			return err;
	}

	return 0;
}