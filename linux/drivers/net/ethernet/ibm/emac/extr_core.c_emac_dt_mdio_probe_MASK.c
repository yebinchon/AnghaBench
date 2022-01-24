#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct emac_instance {TYPE_4__* mii_bus; TYPE_3__* ofdev; TYPE_2__* ndev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_11__ {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; int /*<<< orphan*/  parent; TYPE_2__* priv; } ;
struct TYPE_10__ {char* name; TYPE_6__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char*,...) ; 
 TYPE_4__* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  emac_mii_bus_read ; 
 int /*<<< orphan*/  emac_mii_bus_reset ; 
 int /*<<< orphan*/  emac_mii_bus_write ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_4__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC7(struct emac_instance *dev)
{
	struct device_node *mii_np;
	int res;

	mii_np = FUNC3(dev->ofdev->dev.of_node, "mdio");
	if (!mii_np) {
		FUNC0(&dev->ofdev->dev, "no mdio definition found.");
		return -ENODEV;
	}

	if (!FUNC2(mii_np)) {
		res = -ENODEV;
		goto put_node;
	}

	dev->mii_bus = FUNC1(&dev->ofdev->dev);
	if (!dev->mii_bus) {
		res = -ENOMEM;
		goto put_node;
	}

	dev->mii_bus->priv = dev->ndev;
	dev->mii_bus->parent = dev->ndev->dev.parent;
	dev->mii_bus->name = "emac_mdio";
	dev->mii_bus->read = &emac_mii_bus_read;
	dev->mii_bus->write = &emac_mii_bus_write;
	dev->mii_bus->reset = &emac_mii_bus_reset;
	FUNC6(dev->mii_bus->id, MII_BUS_ID_SIZE, "%s", dev->ofdev->name);
	res = FUNC4(dev->mii_bus, mii_np);
	if (res) {
		FUNC0(&dev->ofdev->dev, "cannot register MDIO bus %s (%d)",
			dev->mii_bus->name, res);
	}

 put_node:
	FUNC5(mii_np);
	return res;
}