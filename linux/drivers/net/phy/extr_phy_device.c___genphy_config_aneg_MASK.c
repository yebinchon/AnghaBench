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
 scalar_t__ AUTONEG_ENABLE ; 
 int BMCR_ANENABLE ; 
 int BMCR_ISOLATE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct phy_device *phydev, bool changed)
{
	int err;

	if (FUNC1(phydev))
		changed = true;

	if (AUTONEG_ENABLE != phydev->autoneg)
		return FUNC3(phydev);

	err = FUNC0(phydev);
	if (err < 0) /* error */
		return err;
	else if (err)
		changed = true;

	if (!changed) {
		/* Advertisement hasn't changed, but maybe aneg was never on to
		 * begin with?  Or maybe phy was isolated?
		 */
		int ctl = FUNC4(phydev, MII_BMCR);

		if (ctl < 0)
			return ctl;

		if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
			changed = true; /* do restart aneg */
	}

	/* Only restart aneg if we are advertising something different
	 * than we were before.
	 */
	return changed ? FUNC2(phydev) : 0;
}