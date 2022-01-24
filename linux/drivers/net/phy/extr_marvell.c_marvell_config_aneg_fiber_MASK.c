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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int ADVERTISE_FIBER_1000FULL ; 
 int ADVERTISE_FIBER_1000HALF ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int BMCR_ANENABLE ; 
 int BMCR_ISOLATE ; 
 int LPA_PAUSE_FIBER ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int changed = 0;
	int err;
	int adv, oldadv;

	if (phydev->autoneg != AUTONEG_ENABLE)
		return FUNC1(phydev);

	/* Only allow advertising what this PHY supports */
	FUNC3(phydev->advertising, phydev->advertising,
		     phydev->supported);

	/* Setup fiber advertisement */
	adv = FUNC4(phydev, MII_ADVERTISE);
	if (adv < 0)
		return adv;

	oldadv = adv;
	adv &= ~(ADVERTISE_FIBER_1000HALF | ADVERTISE_FIBER_1000FULL
		| LPA_PAUSE_FIBER);
	adv |= FUNC2(phydev->advertising);

	if (adv != oldadv) {
		err = FUNC5(phydev, MII_ADVERTISE, adv);
		if (err < 0)
			return err;

		changed = 1;
	}

	if (changed == 0) {
		/* Advertisement hasn't changed, but maybe aneg was never on to
		 * begin with?	Or maybe phy was isolated?
		 */
		int ctl = FUNC4(phydev, MII_BMCR);

		if (ctl < 0)
			return ctl;

		if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
			changed = 1; /* do restart aneg */
	}

	/* Only restart aneg if we are advertising something different
	 * than we were before.
	 */
	if (changed > 0)
		changed = FUNC0(phydev);

	return changed;
}