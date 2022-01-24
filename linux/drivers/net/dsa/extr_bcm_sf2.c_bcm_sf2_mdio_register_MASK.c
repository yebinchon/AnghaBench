#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dsa_switch {int phys_mii_mask; TYPE_5__* dev; TYPE_2__* slave_mii_bus; } ;
struct device_node {int dummy; } ;
struct bcm_sf2_priv {int indir_phy_mask; TYPE_2__* slave_mii_bus; struct device_node* master_mii_dn; TYPE_3__* master_mii_bus; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct TYPE_7__ {char* name; int phy_mask; int /*<<< orphan*/  parent; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct bcm_sf2_priv* priv; } ;

/* Variables and functions */
 int BRCM_PSEUDO_PHY_ADDR ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  bcm_sf2_sw_mdio_read ; 
 int /*<<< orphan*/  bcm_sf2_sw_mdio_write ; 
 struct bcm_sf2_priv* FUNC0 (struct dsa_switch*) ; 
 TYPE_2__* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 TYPE_3__* FUNC5 (struct device_node*) ; 
 int FUNC6 (TYPE_2__*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dsa_switch *ds)
{
	struct bcm_sf2_priv *priv = FUNC0(ds);
	struct device_node *dn;
	static int index;
	int err;

	/* Find our integrated MDIO bus node */
	dn = FUNC3(NULL, NULL, "brcm,unimac-mdio");
	priv->master_mii_bus = FUNC5(dn);
	if (!priv->master_mii_bus)
		return -EPROBE_DEFER;

	FUNC2(&priv->master_mii_bus->dev);
	priv->master_mii_dn = dn;

	priv->slave_mii_bus = FUNC1(ds->dev);
	if (!priv->slave_mii_bus)
		return -ENOMEM;

	priv->slave_mii_bus->priv = priv;
	priv->slave_mii_bus->name = "sf2 slave mii";
	priv->slave_mii_bus->read = bcm_sf2_sw_mdio_read;
	priv->slave_mii_bus->write = bcm_sf2_sw_mdio_write;
	FUNC8(priv->slave_mii_bus->id, MII_BUS_ID_SIZE, "sf2-%d",
		 index++);
	priv->slave_mii_bus->dev.of_node = dn;

	/* Include the pseudo-PHY address to divert reads towards our
	 * workaround. This is only required for 7445D0, since 7445E0
	 * disconnects the internal switch pseudo-PHY such that we can use the
	 * regular SWITCH_MDIO master controller instead.
	 *
	 * Here we flag the pseudo PHY as needing special treatment and would
	 * otherwise make all other PHY read/writes go to the master MDIO bus
	 * controller that comes with this switch backed by the "mdio-unimac"
	 * driver.
	 */
	if (FUNC4("brcm,bcm7445d0"))
		priv->indir_phy_mask |= (1 << BRCM_PSEUDO_PHY_ADDR);
	else
		priv->indir_phy_mask = 0;

	ds->phys_mii_mask = priv->indir_phy_mask;
	ds->slave_mii_bus = priv->slave_mii_bus;
	priv->slave_mii_bus->parent = ds->dev->parent;
	priv->slave_mii_bus->phy_mask = ~priv->indir_phy_mask;

	err = FUNC6(priv->slave_mii_bus, dn);
	if (err && dn)
		FUNC7(dn);

	return err;
}