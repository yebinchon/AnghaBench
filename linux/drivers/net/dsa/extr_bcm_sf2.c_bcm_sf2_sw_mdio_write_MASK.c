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
struct mii_bus {struct bcm_sf2_priv* priv; } ;
struct bcm_sf2_priv {int indir_phy_mask; int /*<<< orphan*/  master_mii_bus; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BRCM_PSEUDO_PHY_ADDR ; 
 int FUNC1 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int addr, int regnum,
				 u16 val)
{
	struct bcm_sf2_priv *priv = bus->priv;

	/* Intercept writes to the Broadcom pseudo-PHY address, else,
	 * send them to our master MDIO bus controller
	 */
	if (addr == BRCM_PSEUDO_PHY_ADDR && priv->indir_phy_mask & FUNC0(addr))
		return FUNC1(priv, 0, addr, regnum, val);
	else
		return FUNC2(priv->master_mii_bus, addr,
				regnum, val);
}