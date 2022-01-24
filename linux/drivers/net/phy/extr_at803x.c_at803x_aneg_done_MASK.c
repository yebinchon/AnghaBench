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
 int AT803X_BT_BX_REG_SEL ; 
 int AT803X_MODE_CFG_MASK ; 
 int AT803X_MODE_CFG_SGMII ; 
 int /*<<< orphan*/  AT803X_PSSR ; 
 int AT803X_PSSR_MR_AN_COMPLETE ; 
 int /*<<< orphan*/  AT803X_REG_CHIP_CONFIG ; 
 int BMSR_ANEGCOMPLETE ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,char*) ; 

__attribute__((used)) static int FUNC4(struct phy_device *phydev)
{
	int ccr;

	int aneg_done = FUNC0(phydev);
	if (aneg_done != BMSR_ANEGCOMPLETE)
		return aneg_done;

	/*
	 * in SGMII mode, if copper side autoneg is successful,
	 * also check SGMII side autoneg result
	 */
	ccr = FUNC1(phydev, AT803X_REG_CHIP_CONFIG);
	if ((ccr & AT803X_MODE_CFG_MASK) != AT803X_MODE_CFG_SGMII)
		return aneg_done;

	/* switch to SGMII/fiber page */
	FUNC2(phydev, AT803X_REG_CHIP_CONFIG, ccr & ~AT803X_BT_BX_REG_SEL);

	/* check if the SGMII link is OK. */
	if (!(FUNC1(phydev, AT803X_PSSR) & AT803X_PSSR_MR_AN_COMPLETE)) {
		FUNC3(phydev, "803x_aneg_done: SGMII link is not ok\n");
		aneg_done = 0;
	}
	/* switch back to copper page */
	FUNC2(phydev, AT803X_REG_CHIP_CONFIG, ccr | AT803X_BT_BX_REG_SEL);

	return aneg_done;
}