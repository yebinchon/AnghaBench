#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lan78xx_net {int chipid; TYPE_4__* mdiobus; int /*<<< orphan*/  net; TYPE_3__* udev; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {char* name; int phy_mask; int /*<<< orphan*/  id; int /*<<< orphan*/  write; int /*<<< orphan*/  read; void* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_9__ {int devnum; TYPE_2__ dev; TYPE_1__* bus; } ;
struct TYPE_7__ {int busnum; } ;

/* Variables and functions */
 int ENOMEM ; 
#define  ID_REV_CHIP_ID_7800_ 130 
#define  ID_REV_CHIP_ID_7801_ 129 
#define  ID_REV_CHIP_ID_7850_ 128 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  lan78xx_mdiobus_read ; 
 int /*<<< orphan*/  lan78xx_mdiobus_write ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_4__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC8(struct lan78xx_net *dev)
{
	struct device_node *node;
	int ret;

	dev->mdiobus = FUNC0();
	if (!dev->mdiobus) {
		FUNC3(dev->net, "can't allocate MDIO bus\n");
		return -ENOMEM;
	}

	dev->mdiobus->priv = (void *)dev;
	dev->mdiobus->read = lan78xx_mdiobus_read;
	dev->mdiobus->write = lan78xx_mdiobus_write;
	dev->mdiobus->name = "lan78xx-mdiobus";

	FUNC7(dev->mdiobus->id, MII_BUS_ID_SIZE, "usb-%03d:%03d",
		 dev->udev->bus->busnum, dev->udev->devnum);

	switch (dev->chipid) {
	case ID_REV_CHIP_ID_7800_:
	case ID_REV_CHIP_ID_7850_:
		/* set to internal PHY id */
		dev->mdiobus->phy_mask = ~(1 << 1);
		break;
	case ID_REV_CHIP_ID_7801_:
		/* scan thru PHYAD[2..0] */
		dev->mdiobus->phy_mask = ~(0xFF);
		break;
	}

	node = FUNC4(dev->udev->dev.of_node, "mdio");
	ret = FUNC5(dev->mdiobus, node);
	FUNC6(node);
	if (ret) {
		FUNC3(dev->net, "can't register MDIO bus\n");
		goto exit1;
	}

	FUNC2(dev->net, "registered mdiobus bus %s\n", dev->mdiobus->id);
	return 0;
exit1:
	FUNC1(dev->mdiobus);
	return ret;
}