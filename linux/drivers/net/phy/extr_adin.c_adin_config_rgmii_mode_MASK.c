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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {scalar_t__ interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADIN1300_GE_RGMII_CFG_REG ; 
 int ADIN1300_GE_RGMII_EN ; 
 int ADIN1300_GE_RGMII_GTX_MSK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ADIN1300_GE_RGMII_RXID_EN ; 
 int ADIN1300_GE_RGMII_RX_MSK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ADIN1300_GE_RGMII_TXID_EN ; 
 int /*<<< orphan*/  ADIN1300_RGMII_2_00_NS ; 
 int /*<<< orphan*/  MDIO_MMD_VEND1 ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_ID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_RXID ; 
 scalar_t__ PHY_INTERFACE_MODE_RGMII_TXID ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adin_rgmii_delays ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct phy_device*) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct phy_device *phydev)
{
	u32 val;
	int reg;

	if (!FUNC4(phydev))
		return FUNC3(phydev, MDIO_MMD_VEND1,
					  ADIN1300_GE_RGMII_CFG_REG,
					  ADIN1300_GE_RGMII_EN);

	reg = FUNC5(phydev, MDIO_MMD_VEND1, ADIN1300_GE_RGMII_CFG_REG);
	if (reg < 0)
		return reg;

	reg |= ADIN1300_GE_RGMII_EN;

	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
	    phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID) {
		reg |= ADIN1300_GE_RGMII_RXID_EN;

		val = FUNC2(phydev, "adi,rx-internal-delay-ps",
					 adin_rgmii_delays,
					 ADIN1300_RGMII_2_00_NS);
		reg &= ~ADIN1300_GE_RGMII_RX_MSK;
		reg |= FUNC1(val);
	} else {
		reg &= ~ADIN1300_GE_RGMII_RXID_EN;
	}

	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
	    phydev->interface == PHY_INTERFACE_MODE_RGMII_TXID) {
		reg |= ADIN1300_GE_RGMII_TXID_EN;

		val = FUNC2(phydev, "adi,tx-internal-delay-ps",
					 adin_rgmii_delays,
					 ADIN1300_RGMII_2_00_NS);
		reg &= ~ADIN1300_GE_RGMII_GTX_MSK;
		reg |= FUNC0(val);
	} else {
		reg &= ~ADIN1300_GE_RGMII_TXID_EN;
	}

	return FUNC6(phydev, MDIO_MMD_VEND1,
			     ADIN1300_GE_RGMII_CFG_REG, reg);
}