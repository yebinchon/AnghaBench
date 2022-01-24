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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  lp_advertising; scalar_t__ is_gigabit_capable; int /*<<< orphan*/  autoneg_complete; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int CTL1000_ENABLE_MASTER ; 
 int ENOLINK ; 
 int LPA_1000MSFAIL ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  MII_LPA ; 
 int /*<<< orphan*/  MII_STAT1000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*,char*) ; 

int FUNC5(struct phy_device *phydev)
{
	int lpa, lpagb;

	if (phydev->autoneg == AUTONEG_ENABLE) {
		if (!phydev->autoneg_complete) {
			FUNC2(phydev->lp_advertising,
							0);
			FUNC1(phydev->lp_advertising, 0);
			return 0;
		}

		if (phydev->is_gigabit_capable) {
			lpagb = FUNC3(phydev, MII_STAT1000);
			if (lpagb < 0)
				return lpagb;

			if (lpagb & LPA_1000MSFAIL) {
				int adv = FUNC3(phydev, MII_CTRL1000);

				if (adv < 0)
					return adv;

				if (adv & CTL1000_ENABLE_MASTER)
					FUNC4(phydev, "Master/Slave resolution failed, maybe conflicting manual settings?\n");
				else
					FUNC4(phydev, "Master/Slave resolution failed\n");
				return -ENOLINK;
			}

			FUNC2(phydev->lp_advertising,
							lpagb);
		}

		lpa = FUNC3(phydev, MII_LPA);
		if (lpa < 0)
			return lpa;

		FUNC1(phydev->lp_advertising, lpa);
	} else {
		FUNC0(phydev->lp_advertising);
	}

	return 0;
}