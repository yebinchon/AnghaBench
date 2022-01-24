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
typedef  int /*<<< orphan*/  u16 ;
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  advertising; int /*<<< orphan*/  mdix_ctrl; } ;

/* Variables and functions */
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_1000HALF ; 
 scalar_t__ AUTONEG_DISABLE ; 
 int /*<<< orphan*/  ETH_TP_MDI_AUTO ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MV_AN_CTRL1000 ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	bool changed = false;
	u16 reg;
	int ret;

	/* We don't support manual MDI control */
	phydev->mdix_ctrl = ETH_TP_MDI_AUTO;

	if (phydev->autoneg == AUTONEG_DISABLE)
		return FUNC2(phydev);

	ret = FUNC0(phydev);
	if (ret < 0)
		return ret;
	if (ret > 0)
		changed = true;

	/* Clause 45 has no standardized support for 1000BaseT, therefore
	 * use vendor registers for this mode.
	 */
	reg = FUNC3(phydev->advertising);
	ret = FUNC4(phydev, MDIO_MMD_AN, MV_AN_CTRL1000,
			     ADVERTISE_1000FULL | ADVERTISE_1000HALF, reg);
	if (ret < 0)
		return ret;
	if (ret > 0)
		changed = true;

	return FUNC1(phydev, changed);
}