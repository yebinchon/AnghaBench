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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*) ; 

int FUNC6(struct phy_device *phydev, bool sync)
{
	FUNC0(adv_tmp);
	int ret;

	if (phydev->autoneg != AUTONEG_ENABLE)
		return 0;

	FUNC1(adv_tmp, phydev->advertising);

	ret = FUNC5(phydev);
	if (ret)
		return ret;

	FUNC1(phydev->adv_old, adv_tmp);

	if (FUNC2(phydev->advertising, adv_tmp))
		return 0;

	ret = FUNC3(phydev);
	if (ret)
		return ret;

	return sync ? FUNC4(phydev) : 0;
}