#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mii_bus {int phy_ignore_ta_mask; struct mdiobb_ctrl* priv; } ;
struct mdiobb_ctrl {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_mdio_dir ) (struct mdiobb_ctrl*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_C45_READ ; 
 int /*<<< orphan*/  MDIO_READ ; 
 int MII_ADDR_C45 ; 
 int /*<<< orphan*/  FUNC0 (struct mdiobb_ctrl*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct mdiobb_ctrl*,int,int) ; 
 scalar_t__ FUNC2 (struct mdiobb_ctrl*) ; 
 int FUNC3 (struct mdiobb_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mdiobb_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int phy, int reg)
{
	struct mdiobb_ctrl *ctrl = bus->priv;
	int ret, i;

	if (reg & MII_ADDR_C45) {
		reg = FUNC1(ctrl, phy, reg);
		FUNC0(ctrl, MDIO_C45_READ, phy, reg);
	} else
		FUNC0(ctrl, MDIO_READ, phy, reg);

	ctrl->ops->set_mdio_dir(ctrl, 0);

	/* check the turnaround bit: the PHY should be driving it to zero, if this
	 * PHY is listed in phy_ignore_ta_mask as having broken TA, skip that
	 */
	if (FUNC2(ctrl) != 0 &&
	    !(bus->phy_ignore_ta_mask & (1 << phy))) {
		/* PHY didn't drive TA low -- flush any bits it
		 * may be trying to send.
		 */
		for (i = 0; i < 32; i++)
			FUNC2(ctrl);

		return 0xffff;
	}

	ret = FUNC3(ctrl, 16);
	FUNC2(ctrl);
	return ret;
}