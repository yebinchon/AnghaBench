#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct netsec_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/ * phydev; struct mii_bus* mii_bus; } ;
struct mii_bus {char* name; int /*<<< orphan*/  phy_mask; int /*<<< orphan*/  parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct netsec_priv* priv; int /*<<< orphan*/  id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct mii_bus*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC9 (struct mii_bus*) ; 
 int /*<<< orphan*/  netsec_phy_read ; 
 int /*<<< orphan*/  netsec_phy_write ; 
 struct device_node* FUNC10 (struct device_node*,char*) ; 
 int FUNC11 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC15(struct netsec_priv *priv, u32 phy_addr)
{
	struct mii_bus *bus;
	int ret;

	bus = FUNC6(priv->dev);
	if (!bus)
		return -ENOMEM;

	FUNC14(bus->id, MII_BUS_ID_SIZE, "%s", FUNC4(priv->dev));
	bus->priv = priv;
	bus->name = "SNI NETSEC MDIO";
	bus->read = netsec_phy_read;
	bus->write = netsec_phy_write;
	bus->parent = priv->dev;
	priv->mii_bus = bus;

	if (FUNC5(priv->dev)) {
		struct device_node *mdio_node, *parent = FUNC5(priv->dev);

		mdio_node = FUNC10(parent, "mdio");
		if (mdio_node) {
			parent = mdio_node;
		} else {
			/* older f/w doesn't populate the mdio subnode,
			 * allow relaxed upgrade of f/w in due time.
			 */
			FUNC3(priv->dev, "Upgrade f/w for mdio subnode!\n");
		}

		ret = FUNC11(bus, parent);
		FUNC12(mdio_node);

		if (ret) {
			FUNC2(priv->dev, "mdiobus register err(%d)\n", ret);
			return ret;
		}
	} else {
		/* Mask out all PHYs from auto probing. */
		bus->phy_mask = ~0;
		ret = FUNC8(bus);
		if (ret) {
			FUNC2(priv->dev, "mdiobus register err(%d)\n", ret);
			return ret;
		}

		priv->phydev = FUNC7(bus, phy_addr, false);
		if (FUNC0(priv->phydev)) {
			ret = FUNC1(priv->phydev);
			FUNC2(priv->dev, "get_phy_device err(%d)\n", ret);
			priv->phydev = NULL;
			return -ENODEV;
		}

		ret = FUNC13(priv->phydev);
		if (ret) {
			FUNC9(bus);
			FUNC2(priv->dev,
				"phy_device_register err(%d)\n", ret);
		}
	}

	return ret;
}