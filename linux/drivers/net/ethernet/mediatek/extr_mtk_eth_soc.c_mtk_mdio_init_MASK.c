#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mtk_eth {TYPE_1__* mii_bus; TYPE_3__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  id; TYPE_3__* parent; struct mtk_eth* priv; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char*) ; 
 TYPE_1__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  mtk_mdio_read ; 
 int /*<<< orphan*/  mtk_mdio_write ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct mtk_eth *eth)
{
	struct device_node *mii_np;
	int ret;

	mii_np = FUNC3(eth->dev->of_node, "mdio-bus");
	if (!mii_np) {
		FUNC0(eth->dev, "no %s child node found", "mdio-bus");
		return -ENODEV;
	}

	if (!FUNC2(mii_np)) {
		ret = -ENODEV;
		goto err_put_node;
	}

	eth->mii_bus = FUNC1(eth->dev);
	if (!eth->mii_bus) {
		ret = -ENOMEM;
		goto err_put_node;
	}

	eth->mii_bus->name = "mdio";
	eth->mii_bus->read = mtk_mdio_read;
	eth->mii_bus->write = mtk_mdio_write;
	eth->mii_bus->priv = eth;
	eth->mii_bus->parent = eth->dev;

	FUNC6(eth->mii_bus->id, MII_BUS_ID_SIZE, "%pOFn", mii_np);
	ret = FUNC4(eth->mii_bus, mii_np);

err_put_node:
	FUNC5(mii_np);
	return ret;
}