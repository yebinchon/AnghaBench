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
 int /*<<< orphan*/  MII_88E1318S_PHY_LED_TCR ; 
 int /*<<< orphan*/  MII_88E1318S_PHY_LED_TCR_FORCE_INT ; 
 int MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW ; 
 int MII_88E1318S_PHY_LED_TCR_INTn_ENABLE ; 
 int /*<<< orphan*/  MII_MARVELL_LED_PAGE ; 
 int FUNC0 (struct phy_device*) ; 
 scalar_t__ FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	if (FUNC1(phydev)) {
		int err = FUNC2(
			phydev, MII_MARVELL_LED_PAGE,
			MII_88E1318S_PHY_LED_TCR,
			MII_88E1318S_PHY_LED_TCR_FORCE_INT,
			MII_88E1318S_PHY_LED_TCR_INTn_ENABLE |
			MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW);
		if (err < 0)
			return err;
	}

	return FUNC0(phydev);
}