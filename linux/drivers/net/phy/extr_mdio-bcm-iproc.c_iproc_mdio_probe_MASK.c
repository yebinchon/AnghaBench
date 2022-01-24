#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {char* name; int id; TYPE_1__ dev; } ;
struct mii_bus {char* name; int /*<<< orphan*/  write; int /*<<< orphan*/  read; TYPE_1__* parent; int /*<<< orphan*/  id; struct iproc_mdio_priv* priv; } ;
struct iproc_mdio_priv {int /*<<< orphan*/  base; struct mii_bus* mii_bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct iproc_mdio_priv* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iproc_mdio_read ; 
 int /*<<< orphan*/  iproc_mdio_write ; 
 struct mii_bus* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct mii_bus*) ; 
 int FUNC9 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct iproc_mdio_priv*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct iproc_mdio_priv *priv;
	struct mii_bus *bus;
	int rc;

	priv = FUNC4(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->base = FUNC5(pdev, 0);
	if (FUNC0(priv->base)) {
		FUNC2(&pdev->dev, "failed to ioremap register\n");
		return FUNC1(priv->base);
	}

	priv->mii_bus = FUNC7();
	if (!priv->mii_bus) {
		FUNC2(&pdev->dev, "MDIO bus alloc failed\n");
		return -ENOMEM;
	}

	bus = priv->mii_bus;
	bus->priv = priv;
	bus->name = "iProc MDIO bus";
	FUNC11(bus->id, MII_BUS_ID_SIZE, "%s-%d", pdev->name, pdev->id);
	bus->parent = &pdev->dev;
	bus->read = iproc_mdio_read;
	bus->write = iproc_mdio_write;

	FUNC6(priv->base);

	rc = FUNC9(bus, pdev->dev.of_node);
	if (rc) {
		FUNC2(&pdev->dev, "MDIO bus registration failed\n");
		goto err_iproc_mdio;
	}

	FUNC10(pdev, priv);

	FUNC3(&pdev->dev, "Broadcom iProc MDIO bus at 0x%p\n", priv->base);

	return 0;

err_iproc_mdio:
	FUNC8(bus);
	return rc;
}