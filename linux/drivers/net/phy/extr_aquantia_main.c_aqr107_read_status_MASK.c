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
struct phy_device {scalar_t__ autoneg; int /*<<< orphan*/  interface; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MDIO_MMD_PHYXS ; 
 int /*<<< orphan*/  MDIO_PHYXS_VEND_IF_STATUS ; 
#define  MDIO_PHYXS_VEND_IF_STATUS_TYPE_KR 132 
 int /*<<< orphan*/  MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK ; 
#define  MDIO_PHYXS_VEND_IF_STATUS_TYPE_OCSGMII 131 
#define  MDIO_PHYXS_VEND_IF_STATUS_TYPE_SGMII 130 
#define  MDIO_PHYXS_VEND_IF_STATUS_TYPE_USXGMII 129 
#define  MDIO_PHYXS_VEND_IF_STATUS_TYPE_XFI 128 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_10GKR ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_2500BASEX ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_NA ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_SGMII ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_USXGMII ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,char*) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int val, ret;

	ret = FUNC3(phydev);
	if (ret)
		return ret;

	if (!phydev->link || phydev->autoneg == AUTONEG_DISABLE)
		return 0;

	val = FUNC4(phydev, MDIO_MMD_PHYXS, MDIO_PHYXS_VEND_IF_STATUS);
	if (val < 0)
		return val;

	switch (FUNC0(MDIO_PHYXS_VEND_IF_STATUS_TYPE_MASK, val)) {
	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_KR:
	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_XFI:
		phydev->interface = PHY_INTERFACE_MODE_10GKR;
		break;
	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_USXGMII:
		phydev->interface = PHY_INTERFACE_MODE_USXGMII;
		break;
	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_SGMII:
		phydev->interface = PHY_INTERFACE_MODE_SGMII;
		break;
	case MDIO_PHYXS_VEND_IF_STATUS_TYPE_OCSGMII:
		phydev->interface = PHY_INTERFACE_MODE_2500BASEX;
		break;
	default:
		phydev->interface = PHY_INTERFACE_MODE_NA;
		break;
	}

	val = FUNC1(phydev);
	if (val <= 0)
		return val;

	FUNC5(phydev, "Downshift occurred! Cabling may be defective.\n");

	/* Read downshifted rate from vendor register */
	return FUNC2(phydev);
}