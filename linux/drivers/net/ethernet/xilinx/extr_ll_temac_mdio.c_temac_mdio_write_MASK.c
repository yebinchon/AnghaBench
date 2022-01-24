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
typedef  int u16 ;
struct temac_local {int /*<<< orphan*/  indirect_lock; int /*<<< orphan*/  dev; } ;
struct mii_bus {struct temac_local* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  XTE_MGTDR_OFFSET ; 
 int /*<<< orphan*/  XTE_MIIMAI_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct temac_local*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
	struct temac_local *lp = bus->priv;
	unsigned long flags;

	FUNC0(lp->dev, "temac_mdio_write(phy_id=%i, reg=%x, val=%x)\n",
		phy_id, reg, val);

	/* First write the desired value into the write data register
	 * and then write the address into the access initiator register
	 */
	FUNC1(lp->indirect_lock, flags);
	FUNC3(lp, XTE_MGTDR_OFFSET, val);
	FUNC3(lp, XTE_MIIMAI_OFFSET, (phy_id << 5) | reg);
	FUNC2(lp->indirect_lock, flags);

	return 0;
}