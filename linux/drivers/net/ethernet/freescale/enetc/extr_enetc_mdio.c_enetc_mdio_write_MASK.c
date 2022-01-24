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
struct mii_bus {struct enetc_mdio_priv* priv; } ;
struct enetc_mdio_priv {struct enetc_hw* hw; } ;
struct enetc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_MDC_DIV ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MDIO_CFG_ENC45 ; 
 int MDIO_CFG_NEG ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int MII_ADDR_C45 ; 
 int FUNC7 (struct enetc_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct enetc_hw*,int (*) (int),int) ; 

int FUNC9(struct mii_bus *bus, int phy_id, int regnum, u16 value)
{
	struct enetc_mdio_priv *mdio_priv = bus->priv;
	struct enetc_hw *hw = mdio_priv->hw;
	u32 mdio_ctl, mdio_cfg;
	u16 dev_addr;
	int ret;

	mdio_cfg = FUNC2(ENETC_MDC_DIV) | MDIO_CFG_NEG;
	if (regnum & MII_ADDR_C45) {
		dev_addr = (regnum >> 16) & 0x1f;
		mdio_cfg |= MDIO_CFG_ENC45;
	} else {
		/* clause 22 (ie 1G) */
		dev_addr = regnum & 0x1f;
		mdio_cfg &= ~MDIO_CFG_ENC45;
	}

	FUNC8(hw, MDIO_CFG, mdio_cfg);

	ret = FUNC7(hw);
	if (ret)
		return ret;

	/* set port and dev addr */
	mdio_ctl = FUNC5(phy_id) | FUNC4(dev_addr);
	FUNC8(hw, MDIO_CTL, mdio_ctl);

	/* set the register address */
	if (regnum & MII_ADDR_C45) {
		FUNC8(hw, MDIO_ADDR, regnum & 0xffff);

		ret = FUNC7(hw);
		if (ret)
			return ret;
	}

	/* write the value */
	FUNC8(hw, MDIO_DATA, FUNC6(value));

	ret = FUNC7(hw);
	if (ret)
		return ret;

	return 0;
}