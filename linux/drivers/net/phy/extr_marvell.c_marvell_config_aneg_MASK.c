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
 int /*<<< orphan*/  MII_M1111_PHY_LED_CONTROL ; 
 int /*<<< orphan*/  MII_M1111_PHY_LED_DIRECT ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int changed = 0;
	int err;

	err = FUNC2(phydev, phydev->mdix_ctrl);
	if (err < 0)
		return err;

	changed = err;

	err = FUNC3(phydev, MII_M1111_PHY_LED_CONTROL,
			MII_M1111_PHY_LED_DIRECT);
	if (err < 0)
		return err;

	err = FUNC0(phydev);
	if (err < 0)
		return err;

	if (phydev->autoneg != AUTONEG_ENABLE || changed) {
		/* A write to speed/duplex bits (that is performed by
		 * genphy_config_aneg() call above) must be followed by
		 * a software reset. Otherwise, the write has no effect.
		 */
		err = FUNC1(phydev);
		if (err < 0)
			return err;
	}

	return 0;
}