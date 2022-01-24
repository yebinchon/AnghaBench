#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct realtek_smi {TYPE_3__* slave_mii_bus; TYPE_5__* dev; TYPE_2__* ds; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  id; TYPE_5__* parent; TYPE_1__ dev; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct realtek_smi* priv; } ;
struct TYPE_8__ {int index; TYPE_3__* slave_mii_bus; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*,...) ; 
 TYPE_3__* FUNC1 (TYPE_5__*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_3__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  realtek_smi_mdio_read ; 
 int /*<<< orphan*/  realtek_smi_mdio_write ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(struct realtek_smi *smi)
{
	struct device_node *mdio_np;
	int ret;

	mdio_np = FUNC2(smi->dev->of_node, "realtek,smi-mdio");
	if (!mdio_np) {
		FUNC0(smi->dev, "no MDIO bus node\n");
		return -ENODEV;
	}

	smi->slave_mii_bus = FUNC1(smi->dev);
	if (!smi->slave_mii_bus) {
		ret = -ENOMEM;
		goto err_put_node;
	}
	smi->slave_mii_bus->priv = smi;
	smi->slave_mii_bus->name = "SMI slave MII";
	smi->slave_mii_bus->read = realtek_smi_mdio_read;
	smi->slave_mii_bus->write = realtek_smi_mdio_write;
	FUNC5(smi->slave_mii_bus->id, MII_BUS_ID_SIZE, "SMI-%d",
		 smi->ds->index);
	smi->slave_mii_bus->dev.of_node = mdio_np;
	smi->slave_mii_bus->parent = smi->dev;
	smi->ds->slave_mii_bus = smi->slave_mii_bus;

	ret = FUNC3(smi->slave_mii_bus, mdio_np);
	if (ret) {
		FUNC0(smi->dev, "unable to register MDIO bus %s\n",
			smi->slave_mii_bus->id);
		goto err_put_node;
	}

	return 0;

err_put_node:
	FUNC4(mdio_np);

	return ret;
}