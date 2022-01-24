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
 int /*<<< orphan*/  BANK_WOL ; 
 int EXPANSION_NWAY ; 
 int LPA_LPACK ; 
 int /*<<< orphan*/  LPI_STATUS ; 
 int LPI_STATUS_RSV12 ; 
 int /*<<< orphan*/  MII_EXPANSION ; 
 int /*<<< orphan*/  MII_LPA ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,char*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int ret, wol, lpa, exp;

	if (phydev->autoneg == AUTONEG_ENABLE) {
		ret = FUNC0(phydev);
		if (ret < 0)
			return ret;
		else if (!ret)
			goto read_status_continue;

		/* Aneg is done, let's check everything is fine */
		wol = FUNC3(phydev, BANK_WOL, LPI_STATUS);
		if (wol < 0)
			return wol;

		lpa = FUNC4(phydev, MII_LPA);
		if (lpa < 0)
			return lpa;

		exp = FUNC4(phydev, MII_EXPANSION);
		if (exp < 0)
			return exp;

		if (!(wol & LPI_STATUS_RSV12) ||
		    ((exp & EXPANSION_NWAY) && !(lpa & LPA_LPACK))) {
			/* Looks like aneg failed after all */
			FUNC5(phydev, "LPA corruption - aneg restart\n");
			return FUNC2(phydev);
		}
	}

read_status_continue:
	return FUNC1(phydev);
}