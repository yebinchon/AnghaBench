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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  adv_old; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adv_tmp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*) ; 

int FUNC6(struct phy_device *phydev)
{
	FUNC0(adv_tmp);

	if (phydev->autoneg != AUTONEG_ENABLE)
		return 0;

	if (FUNC2(phydev->adv_old))
		return 0;

	FUNC1(adv_tmp, phydev->advertising);
	FUNC1(phydev->advertising, phydev->adv_old);
	FUNC4(phydev->adv_old);

	if (FUNC3(phydev->advertising, adv_tmp))
		return 0;

	return FUNC5(phydev);
}