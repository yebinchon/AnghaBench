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
typedef  int u8 ;
struct phy_device {int dummy; } ;
struct ethtool_eee {scalar_t__ eee_enabled; } ;

/* Variables and functions */
 int EBUSY ; 
 int const ETHTOOL_PHY_FAST_LINK_DOWN_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MII_88E1540_COPPER_CTRL3 ; 
 int /*<<< orphan*/  MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN ; 
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_00MS ; 
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_10MS ; 
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_20MS ; 
 int MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_40MS ; 
 int /*<<< orphan*/  MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,struct ethtool_eee*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,char*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev, const u8 *msecs)
{
	struct ethtool_eee eee;
	int val, ret;

	if (*msecs == ETHTOOL_PHY_FAST_LINK_DOWN_OFF)
		return FUNC1(phydev, MII_88E1540_COPPER_CTRL3,
				      MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN);

	/* According to the Marvell data sheet EEE must be disabled for
	 * Fast Link Down detection to work properly
	 */
	ret = FUNC2(phydev, &eee);
	if (!ret && eee.eee_enabled) {
		FUNC5(phydev, "Fast Link Down detection requires EEE to be disabled!\n");
		return -EBUSY;
	}

	if (*msecs <= 5)
		val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_00MS;
	else if (*msecs <= 15)
		val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_10MS;
	else if (*msecs <= 30)
		val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_20MS;
	else
		val = MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_40MS;

	val = FUNC0(MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, val);

	ret = FUNC3(phydev, MII_88E1540_COPPER_CTRL3,
			 MII_88E1540_COPPER_CTRL3_LINK_DOWN_DELAY_MASK, val);
	if (ret)
		return ret;

	return FUNC4(phydev, MII_88E1540_COPPER_CTRL3,
			    MII_88E1540_COPPER_CTRL3_FAST_LINK_DOWN);
}