#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct platform_device {char* name; int id; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ei_device {scalar_t__ mem; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; } ;
struct ax_device {TYPE_2__* mii_bus; TYPE_5__ bb_ctrl; scalar_t__ addr_memr; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ AX_MEMR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 TYPE_2__* FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  bb_ops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 struct ei_device* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 struct ax_device* FUNC5 (struct net_device*) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct platform_device *pdev = FUNC6(dev->dev.parent);
	struct ei_device *ei_local = FUNC3(dev);
	struct ax_device *ax = FUNC5(dev);
	int err;

	ax->bb_ctrl.ops = &bb_ops;
	ax->addr_memr = ei_local->mem + AX_MEMR;
	ax->mii_bus = FUNC0(&ax->bb_ctrl);
	if (!ax->mii_bus) {
		err = -ENOMEM;
		goto out;
	}

	ax->mii_bus->name = "ax88796_mii_bus";
	ax->mii_bus->parent = dev->dev.parent;
	FUNC4(ax->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
		 pdev->name, pdev->id);

	err = FUNC2(ax->mii_bus);
	if (err)
		goto out_free_mdio_bitbang;

	return 0;

 out_free_mdio_bitbang:
	FUNC1(ax->mii_bus);
 out:
	return err;
}