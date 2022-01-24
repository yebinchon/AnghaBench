#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {char* name; TYPE_5__ dev; } ;
struct mii_bus {char* name; struct emac_adapter* priv; TYPE_5__* parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  id; } ;
struct emac_adapter {TYPE_2__* phydev; struct mii_bus* mii_bus; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {TYPE_1__ mdio; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 int FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ *) ; 
 struct mii_bus* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  emac_mdio_read ; 
 int /*<<< orphan*/  emac_mdio_write ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 TYPE_2__* FUNC5 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC7 (struct mii_bus*) ; 
 int FUNC8 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (struct device_node*) ; 
 TYPE_2__* FUNC12 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

int FUNC14(struct platform_device *pdev, struct emac_adapter *adpt)
{
	struct device_node *np = pdev->dev.of_node;
	struct mii_bus *mii_bus;
	int ret;

	/* Create the mii_bus object for talking to the MDIO bus */
	adpt->mii_bus = mii_bus = FUNC2(&pdev->dev);
	if (!mii_bus)
		return -ENOMEM;

	mii_bus->name = "emac-mdio";
	FUNC13(mii_bus->id, MII_BUS_ID_SIZE, "%s", pdev->name);
	mii_bus->read = emac_mdio_read;
	mii_bus->write = emac_mdio_write;
	mii_bus->parent = &pdev->dev;
	mii_bus->priv = adpt;

	if (FUNC4(&pdev->dev)) {
		u32 phy_addr;

		ret = FUNC6(mii_bus);
		if (ret) {
			FUNC0(&pdev->dev, "could not register mdio bus\n");
			return ret;
		}
		ret = FUNC1(&pdev->dev, "phy-channel",
					       &phy_addr);
		if (ret)
			/* If we can't read a valid phy address, then assume
			 * that there is only one phy on this mdio bus.
			 */
			adpt->phydev = FUNC12(mii_bus);
		else
			adpt->phydev = FUNC5(mii_bus, phy_addr);

		/* of_phy_find_device() claims a reference to the phydev,
		 * so we do that here manually as well. When the driver
		 * later unloads, it can unilaterally drop the reference
		 * without worrying about ACPI vs DT.
		 */
		if (adpt->phydev)
			FUNC3(&adpt->phydev->mdio.dev);
	} else {
		struct device_node *phy_np;

		ret = FUNC8(mii_bus, np);
		if (ret) {
			FUNC0(&pdev->dev, "could not register mdio bus\n");
			return ret;
		}

		phy_np = FUNC10(np, "phy-handle", 0);
		adpt->phydev = FUNC11(phy_np);
		FUNC9(phy_np);
	}

	if (!adpt->phydev) {
		FUNC0(&pdev->dev, "could not find external phy\n");
		FUNC7(mii_bus);
		return -ENODEV;
	}

	return 0;
}