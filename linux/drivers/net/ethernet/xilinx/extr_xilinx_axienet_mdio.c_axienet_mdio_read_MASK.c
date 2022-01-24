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
struct mii_bus {struct axienet_local* priv; } ;
struct axienet_local {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int XAE_MDIO_MCR_INITIATE_MASK ; 
 int /*<<< orphan*/  XAE_MDIO_MCR_OFFSET ; 
 int XAE_MDIO_MCR_OP_READ_MASK ; 
 int XAE_MDIO_MCR_PHYAD_MASK ; 
 int XAE_MDIO_MCR_PHYAD_SHIFT ; 
 int XAE_MDIO_MCR_REGAD_MASK ; 
 int XAE_MDIO_MCR_REGAD_SHIFT ; 
 int /*<<< orphan*/  XAE_MDIO_MRD_OFFSET ; 
 int FUNC0 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axienet_local*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct axienet_local*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct mii_bus *bus, int phy_id, int reg)
{
	u32 rc;
	int ret;
	struct axienet_local *lp = bus->priv;

	ret = FUNC2(lp);
	if (ret < 0)
		return ret;

	FUNC1(lp, XAE_MDIO_MCR_OFFSET,
		    (((phy_id << XAE_MDIO_MCR_PHYAD_SHIFT) &
		      XAE_MDIO_MCR_PHYAD_MASK) |
		     ((reg << XAE_MDIO_MCR_REGAD_SHIFT) &
		      XAE_MDIO_MCR_REGAD_MASK) |
		     XAE_MDIO_MCR_INITIATE_MASK |
		     XAE_MDIO_MCR_OP_READ_MASK));

	ret = FUNC2(lp);
	if (ret < 0)
		return ret;

	rc = FUNC0(lp, XAE_MDIO_MRD_OFFSET) & 0x0000FFFF;

	FUNC3(lp->dev, "axienet_mdio_read(phy_id=%i, reg=%x) == %x\n",
		phy_id, reg, rc);

	return rc;
}