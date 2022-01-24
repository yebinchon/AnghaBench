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
struct orion_mdio_dev {scalar_t__ regs; } ;
struct mii_bus {int /*<<< orphan*/  parent; struct orion_mdio_dev* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MII_ADDR_C45 ; 
 scalar_t__ MVMDIO_XSMI_ADDR_REG ; 
 int MVMDIO_XSMI_DEVADDR_SHIFT ; 
 scalar_t__ MVMDIO_XSMI_MGNT_REG ; 
 int MVMDIO_XSMI_PHYADDR_SHIFT ; 
 int MVMDIO_XSMI_READ_OPERATION ; 
 int MVMDIO_XSMI_READ_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct mii_bus*) ; 
 int /*<<< orphan*/  orion_mdio_xsmi_ops ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mii_bus *bus, int mii_id,
				int regnum)
{
	struct orion_mdio_dev *dev = bus->priv;
	u16 dev_addr = (regnum >> 16) & FUNC0(4, 0);
	int ret;

	if (!(regnum & MII_ADDR_C45))
		return -EOPNOTSUPP;

	ret = FUNC2(&orion_mdio_xsmi_ops, bus);
	if (ret < 0)
		return ret;

	FUNC4(regnum & FUNC0(15, 0), dev->regs + MVMDIO_XSMI_ADDR_REG);
	FUNC4((mii_id << MVMDIO_XSMI_PHYADDR_SHIFT) |
	       (dev_addr << MVMDIO_XSMI_DEVADDR_SHIFT) |
	       MVMDIO_XSMI_READ_OPERATION,
	       dev->regs + MVMDIO_XSMI_MGNT_REG);

	ret = FUNC2(&orion_mdio_xsmi_ops, bus);
	if (ret < 0)
		return ret;

	if (!(FUNC3(dev->regs + MVMDIO_XSMI_MGNT_REG) &
	      MVMDIO_XSMI_READ_VALID)) {
		FUNC1(bus->parent, "XSMI bus read not valid\n");
		return -ENODEV;
	}

	return FUNC3(dev->regs + MVMDIO_XSMI_MGNT_REG) & FUNC0(15, 0);
}