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
struct mii_bus {struct arc_emac_priv* priv; } ;
struct arc_emac_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  R_MDIO ; 
 int FUNC0 (struct arc_emac_priv*) ; 
 int FUNC1 (struct arc_emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct arc_emac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_addr, int reg_num)
{
	struct arc_emac_priv *priv = bus->priv;
	unsigned int value;
	int error;

	FUNC2(priv, R_MDIO,
		    0x60020000 | (phy_addr << 23) | (reg_num << 18));

	error = FUNC0(priv);
	if (error < 0)
		return error;

	value = FUNC1(priv, R_MDIO) & 0xffff;

	FUNC3(priv->dev, "arc_mdio_read(phy_addr=%i, reg_num=%x) = %x\n",
		phy_addr, reg_num, value);

	return value;
}