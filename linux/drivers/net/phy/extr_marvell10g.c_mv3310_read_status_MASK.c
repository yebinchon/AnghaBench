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
struct phy_device {scalar_t__ speed; scalar_t__ autoneg; scalar_t__ mdix; int /*<<< orphan*/  lp_advertising; scalar_t__ asym_pause; scalar_t__ pause; scalar_t__ link; int /*<<< orphan*/  duplex; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 scalar_t__ ETH_TP_MDI ; 
 scalar_t__ ETH_TP_MDI_INVALID ; 
 scalar_t__ ETH_TP_MDI_X ; 
 int MDIO_AN_STAT1_COMPLETE ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 scalar_t__ MDIO_STAT1 ; 
 int MDIO_STAT1_LSTATUS ; 
 scalar_t__ MV_AN_STAT1000 ; 
 scalar_t__ MV_PCS_BASE_R ; 
 scalar_t__ MV_PCS_PAIRSWAP ; 
#define  MV_PCS_PAIRSWAP_AB 129 
 int MV_PCS_PAIRSWAP_MASK ; 
#define  MV_PCS_PAIRSWAP_NONE 128 
 scalar_t__ SPEED_10000 ; 
 scalar_t__ SPEED_UNKNOWN ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct phy_device*) ; 
 int FUNC8 (struct phy_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_device*) ; 

__attribute__((used)) static int FUNC10(struct phy_device *phydev)
{
	int val;

	phydev->speed = SPEED_UNKNOWN;
	phydev->duplex = DUPLEX_UNKNOWN;
	FUNC4(phydev->lp_advertising);
	phydev->link = 0;
	phydev->pause = 0;
	phydev->asym_pause = 0;
	phydev->mdix = 0;

	val = FUNC8(phydev, MDIO_MMD_PCS, MV_PCS_BASE_R + MDIO_STAT1);
	if (val < 0)
		return val;

	if (val & MDIO_STAT1_LSTATUS)
		return FUNC6(phydev);

	val = FUNC0(phydev);
	if (val < 0)
		return val;

	val = FUNC8(phydev, MDIO_MMD_AN, MDIO_STAT1);
	if (val < 0)
		return val;

	if (val & MDIO_AN_STAT1_COMPLETE) {
		val = FUNC1(phydev);
		if (val < 0)
			return val;

		/* Read the link partner's 1G advertisement */
		val = FUNC8(phydev, MDIO_MMD_AN, MV_AN_STAT1000);
		if (val < 0)
			return val;

		FUNC5(phydev->lp_advertising, val);

		if (phydev->autoneg == AUTONEG_ENABLE)
			FUNC9(phydev);
	}

	if (phydev->autoneg != AUTONEG_ENABLE) {
		val = FUNC3(phydev);
		if (val < 0)
			return val;
	}

	if (phydev->speed == SPEED_10000) {
		val = FUNC2(phydev);
		if (val < 0)
			return val;
	} else {
		val = FUNC8(phydev, MDIO_MMD_PCS, MV_PCS_PAIRSWAP);
		if (val < 0)
			return val;

		switch (val & MV_PCS_PAIRSWAP_MASK) {
		case MV_PCS_PAIRSWAP_AB:
			phydev->mdix = ETH_TP_MDI_X;
			break;
		case MV_PCS_PAIRSWAP_NONE:
			phydev->mdix = ETH_TP_MDI;
			break;
		default:
			phydev->mdix = ETH_TP_MDI_INVALID;
			break;
		}
	}

	FUNC7(phydev);

	return 0;
}