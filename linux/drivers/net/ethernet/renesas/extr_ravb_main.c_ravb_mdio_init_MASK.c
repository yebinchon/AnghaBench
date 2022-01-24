#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ops; } ;
struct ravb_private {TYPE_1__* mii_bus; TYPE_4__ mdiobb; struct platform_device* pdev; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {char* name; int id; struct device dev; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  id; struct device* parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 TYPE_1__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  bb_ops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct ravb_private *priv)
{
	struct platform_device *pdev = priv->pdev;
	struct device *dev = &pdev->dev;
	int error;

	/* Bitbang init */
	priv->mdiobb.ops = &bb_ops;

	/* MII controller setting */
	priv->mii_bus = FUNC0(&priv->mdiobb);
	if (!priv->mii_bus)
		return -ENOMEM;

	/* Hook up MII support for ethtool */
	priv->mii_bus->name = "ravb_mii";
	priv->mii_bus->parent = dev;
	FUNC3(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
		 pdev->name, pdev->id);

	/* Register MDIO bus */
	error = FUNC2(priv->mii_bus, dev->of_node);
	if (error)
		goto out_free_bus;

	return 0;

out_free_bus:
	FUNC1(priv->mii_bus);
	return error;
}