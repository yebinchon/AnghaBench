#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mii_bus {char* name; struct mdio_fsl_priv* priv; int /*<<< orphan*/  id; TYPE_1__* parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct mdio_fsl_priv {int /*<<< orphan*/  mdio_base; int /*<<< orphan*/  is_little_endian; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  xgmac_mdio_read ; 
 int /*<<< orphan*/  xgmac_mdio_write ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct mii_bus *bus;
	struct resource res;
	struct mdio_fsl_priv *priv;
	int ret;

	ret = FUNC4(np, 0, &res);
	if (ret) {
		FUNC0(&pdev->dev, "could not obtain address\n");
		return ret;
	}

	bus = FUNC2(sizeof(struct mdio_fsl_priv));
	if (!bus)
		return -ENOMEM;

	bus->name = "Freescale XGMAC MDIO Bus";
	bus->read = xgmac_mdio_read;
	bus->write = xgmac_mdio_write;
	bus->parent = &pdev->dev;
	FUNC9(bus->id, MII_BUS_ID_SIZE, "%llx", (unsigned long long)res.start);

	/* Set the PHY base address */
	priv = bus->priv;
	priv->mdio_base = FUNC5(np, 0);
	if (!priv->mdio_base) {
		ret = -ENOMEM;
		goto err_ioremap;
	}

	priv->is_little_endian = FUNC7(pdev->dev.of_node,
						       "little-endian");

	ret = FUNC6(bus, np);
	if (ret) {
		FUNC0(&pdev->dev, "cannot register MDIO bus\n");
		goto err_registration;
	}

	FUNC8(pdev, bus);

	return 0;

err_registration:
	FUNC1(priv->mdio_base);

err_ioremap:
	FUNC3(bus);

	return ret;
}