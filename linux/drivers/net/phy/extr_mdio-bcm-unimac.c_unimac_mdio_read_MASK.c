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
struct unimac_mdio_priv {int (* wait_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  wait_func_data; } ;
struct mii_bus {int phy_ignore_ta_mask; struct unimac_mdio_priv* priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MDIO_CMD ; 
 int MDIO_PMD_SHIFT ; 
 int MDIO_RD ; 
 int MDIO_READ_FAIL ; 
 int MDIO_REG_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct unimac_mdio_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct unimac_mdio_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct unimac_mdio_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_id, int reg)
{
	struct unimac_mdio_priv *priv = bus->priv;
	int ret;
	u32 cmd;

	/* Prepare the read operation */
	cmd = MDIO_RD | (phy_id << MDIO_PMD_SHIFT) | (reg << MDIO_REG_SHIFT);
	FUNC3(priv, cmd, MDIO_CMD);

	/* Start MDIO transaction */
	FUNC2(priv);

	ret = priv->wait_func(priv->wait_func_data);
	if (ret)
		return ret;

	cmd = FUNC1(priv, MDIO_CMD);

	/* Some broken devices are known not to release the line during
	 * turn-around, e.g: Broadcom BCM53125 external switches, so check for
	 * that condition here and ignore the MDIO controller read failure
	 * indication.
	 */
	if (!(bus->phy_ignore_ta_mask & 1 << phy_id) && (cmd & MDIO_READ_FAIL))
		return -EIO;

	return cmd & 0xffff;
}