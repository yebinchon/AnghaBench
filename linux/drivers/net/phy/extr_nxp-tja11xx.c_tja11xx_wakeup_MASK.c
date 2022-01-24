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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_ECTRL ; 
 int MII_ECTRL_POWER_MODE_MASK ; 
#define  MII_ECTRL_POWER_MODE_NORMAL 130 
#define  MII_ECTRL_POWER_MODE_NO_CHANGE 129 
#define  MII_ECTRL_POWER_MODE_STANDBY 128 
 int /*<<< orphan*/  MII_ECTRL_WAKE_REQUEST ; 
 int /*<<< orphan*/  MII_GENSTAT ; 
 int MII_GENSTAT_PLL_LOCKED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int,int const) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int,int const) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int ret;

	ret = FUNC3(phydev, MII_ECTRL);
	if (ret < 0)
		return ret;

	switch (ret & MII_ECTRL_POWER_MODE_MASK) {
	case MII_ECTRL_POWER_MODE_NO_CHANGE:
		break;
	case MII_ECTRL_POWER_MODE_NORMAL:
		ret = FUNC4(phydev, MII_ECTRL, MII_ECTRL_WAKE_REQUEST);
		if (ret)
			return ret;

		ret = FUNC0(phydev, MII_ECTRL, MII_ECTRL_WAKE_REQUEST);
		if (ret)
			return ret;
		break;
	case MII_ECTRL_POWER_MODE_STANDBY:
		ret = FUNC2(phydev, MII_ECTRL,
				       MII_ECTRL_POWER_MODE_MASK,
				       MII_ECTRL_POWER_MODE_STANDBY);
		if (ret)
			return ret;

		ret = FUNC1(phydev, MII_ECTRL, MII_ECTRL_POWER_MODE_MASK,
				 MII_ECTRL_POWER_MODE_NORMAL);
		if (ret)
			return ret;

		ret = FUNC2(phydev, MII_GENSTAT,
				       MII_GENSTAT_PLL_LOCKED,
				       MII_GENSTAT_PLL_LOCKED);
		if (ret)
			return ret;

		return FUNC5(phydev);
	default:
		break;
	}

	return 0;
}