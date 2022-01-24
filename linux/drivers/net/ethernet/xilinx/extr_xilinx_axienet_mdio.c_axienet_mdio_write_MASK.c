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
typedef  scalar_t__ u16 ;
struct mii_bus {struct axienet_local* priv; } ;
struct axienet_local {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XAE_MDIO_MCR_INITIATE_MASK ; 
 int /*<<< orphan*/  XAE_MDIO_MCR_OFFSET ; 
 int XAE_MDIO_MCR_OP_WRITE_MASK ; 
 int XAE_MDIO_MCR_PHYAD_MASK ; 
 int XAE_MDIO_MCR_PHYAD_SHIFT ; 
 int XAE_MDIO_MCR_REGAD_MASK ; 
 int XAE_MDIO_MCR_REGAD_SHIFT ; 
 int /*<<< orphan*/  XAE_MDIO_MWD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct axienet_local*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int phy_id, int reg,
			      u16 val)
{
	int ret;
	struct axienet_local *lp = bus->priv;

	FUNC2(lp->dev, "axienet_mdio_write(phy_id=%i, reg=%x, val=%x)\n",
		phy_id, reg, val);

	ret = FUNC1(lp);
	if (ret < 0)
		return ret;

	FUNC0(lp, XAE_MDIO_MWD_OFFSET, (u32) val);
	FUNC0(lp, XAE_MDIO_MCR_OFFSET,
		    (((phy_id << XAE_MDIO_MCR_PHYAD_SHIFT) &
		      XAE_MDIO_MCR_PHYAD_MASK) |
		     ((reg << XAE_MDIO_MCR_REGAD_SHIFT) &
		      XAE_MDIO_MCR_REGAD_MASK) |
		     XAE_MDIO_MCR_INITIATE_MASK |
		     XAE_MDIO_MCR_OP_WRITE_MASK));

	ret = FUNC1(lp);
	if (ret < 0)
		return ret;
	return 0;
}