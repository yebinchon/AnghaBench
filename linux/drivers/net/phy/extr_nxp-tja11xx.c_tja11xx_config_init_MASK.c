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
struct phy_device {int phy_id; int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  autoneg; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int EINVAL ; 
 int /*<<< orphan*/  MII_CFG1 ; 
 int MII_CFG1_AUTO_OP ; 
 int MII_CFG1_LED_ENABLE ; 
 int MII_CFG1_LED_MODE_LINKUP ; 
 int MII_CFG1_LED_MODE_MASK ; 
 int /*<<< orphan*/  MII_CFG1_SLEEP_CONFIRM ; 
 int /*<<< orphan*/  MII_CFG2 ; 
 int MII_CFG2_SLEEP_REQUEST_TO ; 
 int MII_CFG2_SLEEP_REQUEST_TO_16MS ; 
 int /*<<< orphan*/  MII_COMMCFG ; 
 int /*<<< orphan*/  MII_COMMCFG_AUTO_OP ; 
 int /*<<< orphan*/  MII_INTSRC ; 
 int PHY_ID_MASK ; 
#define  PHY_ID_TJA1100 129 
#define  PHY_ID_TJA1101 128 
 int /*<<< orphan*/  SPEED_100 ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int ret;

	ret = FUNC4(phydev);
	if (ret)
		return ret;

	phydev->autoneg = AUTONEG_DISABLE;
	phydev->speed = SPEED_100;
	phydev->duplex = DUPLEX_FULL;

	switch (phydev->phy_id & PHY_ID_MASK) {
	case PHY_ID_TJA1100:
		ret = FUNC1(phydev, MII_CFG1,
				 MII_CFG1_AUTO_OP | MII_CFG1_LED_MODE_MASK |
				 MII_CFG1_LED_ENABLE,
				 MII_CFG1_AUTO_OP | MII_CFG1_LED_MODE_LINKUP |
				 MII_CFG1_LED_ENABLE);
		if (ret)
			return ret;
		break;
	case PHY_ID_TJA1101:
		ret = FUNC3(phydev, MII_COMMCFG, MII_COMMCFG_AUTO_OP);
		if (ret)
			return ret;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC0(phydev, MII_CFG1, MII_CFG1_SLEEP_CONFIRM);
	if (ret)
		return ret;

	ret = FUNC1(phydev, MII_CFG2, MII_CFG2_SLEEP_REQUEST_TO,
			 MII_CFG2_SLEEP_REQUEST_TO_16MS);
	if (ret)
		return ret;

	ret = FUNC5(phydev);
	if (ret < 0)
		return ret;

	/* ACK interrupts by reading the status register */
	ret = FUNC2(phydev, MII_INTSRC);
	if (ret < 0)
		return ret;

	return 0;
}