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
struct orion_mdio_dev {int /*<<< orphan*/  regs; } ;
struct mii_bus {int /*<<< orphan*/  parent; struct orion_mdio_dev* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MII_ADDR_C45 ; 
 int MVMDIO_SMI_PHY_ADDR_SHIFT ; 
 int MVMDIO_SMI_PHY_REG_SHIFT ; 
 int MVMDIO_SMI_READ_OPERATION ; 
 int MVMDIO_SMI_READ_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  orion_mdio_smi_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,struct mii_bus*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int mii_id,
			       int regnum)
{
	struct orion_mdio_dev *dev = bus->priv;
	u32 val;
	int ret;

	if (regnum & MII_ADDR_C45)
		return -EOPNOTSUPP;

	ret = FUNC2(&orion_mdio_smi_ops, bus);
	if (ret < 0)
		return ret;

	FUNC4(((mii_id << MVMDIO_SMI_PHY_ADDR_SHIFT) |
		(regnum << MVMDIO_SMI_PHY_REG_SHIFT)  |
		MVMDIO_SMI_READ_OPERATION),
	       dev->regs);

	ret = FUNC2(&orion_mdio_smi_ops, bus);
	if (ret < 0)
		return ret;

	val = FUNC3(dev->regs);
	if (!(val & MVMDIO_SMI_READ_VALID)) {
		FUNC1(bus->parent, "SMI bus read not valid\n");
		return -ENODEV;
	}

	return val & FUNC0(15, 0);
}