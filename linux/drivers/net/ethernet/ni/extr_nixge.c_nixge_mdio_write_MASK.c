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
struct nixge_priv {int /*<<< orphan*/  dev; } ;
struct mii_bus {struct nixge_priv* priv; } ;

/* Variables and functions */
 int MII_ADDR_C45 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NIXGE_MDIO_C22_WRITE ; 
 int /*<<< orphan*/  NIXGE_MDIO_C45_WRITE ; 
 int NIXGE_MDIO_CLAUSE22 ; 
 int NIXGE_MDIO_CLAUSE45 ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIXGE_MDIO_OP_ADDRESS ; 
 int /*<<< orphan*/  NIXGE_REG_MDIO_ADDR ; 
 int /*<<< orphan*/  NIXGE_REG_MDIO_CTRL ; 
 int /*<<< orphan*/  NIXGE_REG_MDIO_DATA ; 
 int /*<<< orphan*/  NIXGE_REG_MDIO_OP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct nixge_priv*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nixge_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
	struct nixge_priv *priv = bus->priv;
	u32 status, tmp;
	u16 device;
	int err;

	if (reg & MII_ADDR_C45) {
		device = (reg >> 16) & 0x1f;

		FUNC5(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);

		tmp = NIXGE_MDIO_CLAUSE45 | FUNC2(NIXGE_MDIO_OP_ADDRESS)
			| FUNC0(phy_id) | FUNC1(device);

		FUNC5(priv, NIXGE_REG_MDIO_OP, tmp);
		FUNC5(priv, NIXGE_REG_MDIO_CTRL, 1);

		err = FUNC4(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err) {
			FUNC3(priv->dev, "timeout setting address");
			return err;
		}

		tmp = NIXGE_MDIO_CLAUSE45 | FUNC2(NIXGE_MDIO_C45_WRITE)
			| FUNC0(phy_id) | FUNC1(device);

		FUNC5(priv, NIXGE_REG_MDIO_DATA, val);
		FUNC5(priv, NIXGE_REG_MDIO_OP, tmp);
		err = FUNC4(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err)
			FUNC3(priv->dev, "timeout setting write command");
	} else {
		device = reg & 0x1f;

		tmp = NIXGE_MDIO_CLAUSE22 |
			FUNC2(NIXGE_MDIO_C22_WRITE) |
			FUNC0(phy_id) | FUNC1(device);

		FUNC5(priv, NIXGE_REG_MDIO_DATA, val);
		FUNC5(priv, NIXGE_REG_MDIO_OP, tmp);
		FUNC5(priv, NIXGE_REG_MDIO_CTRL, 1);

		err = FUNC4(priv, NIXGE_REG_MDIO_CTRL, status,
					      !status, 10, 1000);
		if (err)
			FUNC3(priv->dev, "timeout setting write command");
	}

	return err;
}