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
struct temac_local {int /*<<< orphan*/  dev; int /*<<< orphan*/  indirect_lock; } ;
struct mii_bus {struct temac_local* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  XTE_LSW0_OFFSET ; 
 int /*<<< orphan*/  XTE_MIIMAI_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct temac_local*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phy_id, int reg)
{
	struct temac_local *lp = bus->priv;
	u32 rc;
	unsigned long flags;

	/* Write the PHY address to the MIIM Access Initiator register.
	 * When the transfer completes, the PHY register value will appear
	 * in the LSW0 register */
	FUNC1(lp->indirect_lock, flags);
	FUNC4(lp, XTE_LSW0_OFFSET, (phy_id << 5) | reg);
	rc = FUNC3(lp, XTE_MIIMAI_OFFSET);
	FUNC2(lp->indirect_lock, flags);

	FUNC0(lp->dev, "temac_mdio_read(phy_id=%i, reg=%x) == %x\n",
		phy_id, reg, rc);

	return rc;
}