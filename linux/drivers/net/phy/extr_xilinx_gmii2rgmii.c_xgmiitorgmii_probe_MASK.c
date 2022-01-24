#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct phy_driver {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct mdio_device {struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  read_status; } ;
struct gmii2rgmii {TYPE_2__ conv_phy_drv; TYPE_1__* phy_dev; TYPE_2__* phy_drv; struct mdio_device* mdio; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_2__* drv; int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct gmii2rgmii* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct gmii2rgmii*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  xgmiitorgmii_read_status ; 

__attribute__((used)) static int FUNC8(struct mdio_device *mdiodev)
{
	struct device *dev = &mdiodev->dev;
	struct device_node *np = dev->of_node, *phy_node;
	struct gmii2rgmii *priv;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	phy_node = FUNC6(np, "phy-handle", 0);
	if (!phy_node) {
		FUNC0(dev, "Couldn't parse phy-handle\n");
		return -ENODEV;
	}

	priv->phy_dev = FUNC7(phy_node);
	FUNC5(phy_node);
	if (!priv->phy_dev) {
		FUNC1(dev, "Couldn't find phydev\n");
		return -EPROBE_DEFER;
	}

	if (!priv->phy_dev->drv) {
		FUNC1(dev, "Attached phy not ready\n");
		return -EPROBE_DEFER;
	}

	priv->mdio = mdiodev;
	priv->phy_drv = priv->phy_dev->drv;
	FUNC4(&priv->conv_phy_drv, priv->phy_dev->drv,
	       sizeof(struct phy_driver));
	priv->conv_phy_drv.read_status = xgmiitorgmii_read_status;
	FUNC3(&priv->phy_dev->mdio, priv);
	priv->phy_dev->drv = &priv->conv_phy_drv;

	return 0;
}