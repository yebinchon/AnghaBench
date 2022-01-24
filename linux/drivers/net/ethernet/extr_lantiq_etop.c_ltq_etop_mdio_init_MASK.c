#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ltq_etop_priv {TYPE_2__* mii_bus; TYPE_1__* pdev; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  id; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct net_device* priv; } ;
struct TYPE_6__ {char* name; int id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  ltq_etop_mdio_rd ; 
 int /*<<< orphan*/  ltq_etop_mdio_wr ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct ltq_etop_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int
FUNC8(struct net_device *dev)
{
	struct ltq_etop_priv *priv = FUNC6(dev);
	int err;

	priv->mii_bus = FUNC1();
	if (!priv->mii_bus) {
		FUNC5(dev, "failed to allocate mii bus\n");
		err = -ENOMEM;
		goto err_out;
	}

	priv->mii_bus->priv = dev;
	priv->mii_bus->read = ltq_etop_mdio_rd;
	priv->mii_bus->write = ltq_etop_mdio_wr;
	priv->mii_bus->name = "ltq_mii";
	FUNC7(priv->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
		priv->pdev->name, priv->pdev->id);
	if (FUNC3(priv->mii_bus)) {
		err = -ENXIO;
		goto err_out_free_mdiobus;
	}

	if (FUNC0(dev)) {
		err = -ENXIO;
		goto err_out_unregister_bus;
	}
	return 0;

err_out_unregister_bus:
	FUNC4(priv->mii_bus);
err_out_free_mdiobus:
	FUNC2(priv->mii_bus);
err_out:
	return err;
}