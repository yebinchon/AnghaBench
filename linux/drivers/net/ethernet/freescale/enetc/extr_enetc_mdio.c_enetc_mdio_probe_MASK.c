#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mii_bus {char* name; int /*<<< orphan*/  id; struct enetc_mdio_priv* priv; struct device* parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct enetc_pf {struct mii_bus* mdio; TYPE_2__* si; } ;
struct enetc_mdio_priv {int /*<<< orphan*/ * hw; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 char* FUNC1 (struct device*) ; 
 struct mii_bus* FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  enetc_mdio_read ; 
 int /*<<< orphan*/  enetc_mdio_write ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

int FUNC7(struct enetc_pf *pf)
{
	struct device *dev = &pf->si->pdev->dev;
	struct enetc_mdio_priv *mdio_priv;
	struct device_node *np;
	struct mii_bus *bus;
	int err;

	bus = FUNC2(dev, sizeof(*mdio_priv));
	if (!bus)
		return -ENOMEM;

	bus->name = "Freescale ENETC MDIO Bus";
	bus->read = enetc_mdio_read;
	bus->write = enetc_mdio_write;
	bus->parent = dev;
	mdio_priv = bus->priv;
	mdio_priv->hw = &pf->si->hw;
	FUNC6(bus->id, MII_BUS_ID_SIZE, "%s", FUNC1(dev));

	np = FUNC3(dev->of_node, "mdio");
	if (!np) {
		FUNC0(dev, "MDIO node missing\n");
		return -EINVAL;
	}

	err = FUNC4(bus, np);
	if (err) {
		FUNC5(np);
		FUNC0(dev, "cannot register MDIO bus\n");
		return err;
	}

	FUNC5(np);
	pf->mdio = bus;

	return 0;
}