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
typedef  int u32 ;
typedef  int u16 ;
struct mii_bus {int /*<<< orphan*/  dev; struct enetc_mdio_priv* priv; } ;
struct enetc_mdio_priv {struct enetc_hw* hw; } ;
struct enetc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_MDC_DIV ; 
 int /*<<< orphan*/  MDIO_ADDR ; 
 int /*<<< orphan*/  MDIO_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MDIO_CFG_ENC45 ; 
 int MDIO_CFG_NEG ; 
 int MDIO_CFG_RD_ER ; 
 int /*<<< orphan*/  MDIO_CTL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int MDIO_CTL_READ ; 
 int /*<<< orphan*/  MDIO_DATA ; 
 int MII_ADDR_C45 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC4 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct enetc_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct enetc_hw*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct mii_bus *bus, int phy_id, int regnum)
{
	struct enetc_mdio_priv *mdio_priv = bus->priv;
	struct enetc_hw *hw = mdio_priv->hw;
	u32 mdio_ctl, mdio_cfg;
	u16 dev_addr, value;
	int ret;

	mdio_cfg = FUNC0(ENETC_MDC_DIV) | MDIO_CFG_NEG;
	if (regnum & MII_ADDR_C45) {
		dev_addr = (regnum >> 16) & 0x1f;
		mdio_cfg |= MDIO_CFG_ENC45;
	} else {
		dev_addr = regnum & 0x1f;
		mdio_cfg &= ~MDIO_CFG_ENC45;
	}

	FUNC6(hw, MDIO_CFG, mdio_cfg);

	ret = FUNC5(hw);
	if (ret)
		return ret;

	/* set port and device addr */
	mdio_ctl = FUNC2(phy_id) | FUNC1(dev_addr);
	FUNC6(hw, MDIO_CTL, mdio_ctl);

	/* set the register address */
	if (regnum & MII_ADDR_C45) {
		FUNC6(hw, MDIO_ADDR, regnum & 0xffff);

		ret = FUNC5(hw);
		if (ret)
			return ret;
	}

	/* initiate the read */
	FUNC6(hw, MDIO_CTL, mdio_ctl | MDIO_CTL_READ);

	ret = FUNC5(hw);
	if (ret)
		return ret;

	/* return all Fs if nothing was there */
	if (FUNC4(hw, MDIO_CFG) & MDIO_CFG_RD_ER) {
		FUNC3(&bus->dev,
			"Error while reading PHY%d reg at %d.%hhu\n",
			phy_id, dev_addr, regnum);
		return 0xffff;
	}

	value = FUNC4(hw, MDIO_DATA) & 0xffff;

	return value;
}