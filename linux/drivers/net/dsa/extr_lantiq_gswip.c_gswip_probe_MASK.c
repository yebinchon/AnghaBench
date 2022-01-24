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
typedef  int u32 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct gswip_priv {int num_gphy_fw; int /*<<< orphan*/ * gphy_fw; TYPE_2__* ds; TYPE_1__* hw_info; struct device* dev; void* mii; void* mdio; void* gswip; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  slave_mii_bus; int /*<<< orphan*/ * ops; struct gswip_priv* priv; } ;
struct TYPE_6__ {int cpu_port; int /*<<< orphan*/  max_ports; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GSWIP_MDIO_GLOB ; 
 int /*<<< orphan*/  GSWIP_MDIO_GLOB_ENABLE ; 
 int /*<<< orphan*/  GSWIP_VERSION ; 
 int GSWIP_VERSION_MOD_MASK ; 
 int GSWIP_VERSION_MOD_SHIFT ; 
 int GSWIP_VERSION_REV_MASK ; 
 int GSWIP_VERSION_REV_SHIFT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int) ; 
 struct gswip_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (struct gswip_priv*,struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gswip_priv*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct gswip_priv*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gswip_switch_ops ; 
 int FUNC14 (struct gswip_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC16 (struct device*) ; 
 struct device_node* FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct gswip_priv*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct gswip_priv *priv;
	struct device_node *mdio_np, *gphy_fw_np;
	struct device *dev = &pdev->dev;
	int err;
	int i;
	u32 version;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->gswip = FUNC5(pdev, 0);
	if (FUNC0(priv->gswip))
		return FUNC1(priv->gswip);

	priv->mdio = FUNC5(pdev, 1);
	if (FUNC0(priv->mdio))
		return FUNC1(priv->mdio);

	priv->mii = FUNC5(pdev, 2);
	if (FUNC0(priv->mii))
		return FUNC1(priv->mii);

	priv->hw_info = FUNC16(dev);
	if (!priv->hw_info)
		return -EINVAL;

	priv->ds = FUNC8(dev, priv->hw_info->max_ports);
	if (!priv->ds)
		return -ENOMEM;

	priv->ds->priv = priv;
	priv->ds->ops = &gswip_switch_ops;
	priv->dev = dev;
	version = FUNC14(priv, GSWIP_VERSION);

	/* bring up the mdio bus */
	gphy_fw_np = FUNC17(dev->of_node, "lantiq,gphy-fw");
	if (gphy_fw_np) {
		err = FUNC10(priv, gphy_fw_np, version);
		FUNC18(gphy_fw_np);
		if (err) {
			FUNC2(dev, "gphy fw probe failed\n");
			return err;
		}
	}

	/* bring up the mdio bus */
	mdio_np = FUNC17(dev->of_node, "lantiq,xrx200-mdio");
	if (mdio_np) {
		err = FUNC12(priv, mdio_np);
		if (err) {
			FUNC2(dev, "mdio probe failed\n");
			goto put_mdio_node;
		}
	}

	err = FUNC7(priv->ds);
	if (err) {
		FUNC2(dev, "dsa switch register failed: %i\n", err);
		goto mdio_bus;
	}
	if (!FUNC6(priv->ds, priv->hw_info->cpu_port)) {
		FUNC2(dev, "wrong CPU port defined, HW only supports port: %i",
			priv->hw_info->cpu_port);
		err = -EINVAL;
		goto disable_switch;
	}

	FUNC19(pdev, priv);

	FUNC3(dev, "probed GSWIP version %lx mod %lx\n",
		 (version & GSWIP_VERSION_REV_MASK) >> GSWIP_VERSION_REV_SHIFT,
		 (version & GSWIP_VERSION_MOD_MASK) >> GSWIP_VERSION_MOD_SHIFT);
	return 0;

disable_switch:
	FUNC13(priv, GSWIP_MDIO_GLOB_ENABLE, 0, GSWIP_MDIO_GLOB);
	FUNC9(priv->ds);
mdio_bus:
	if (mdio_np)
		FUNC15(priv->ds->slave_mii_bus);
put_mdio_node:
	FUNC18(mdio_np);
	for (i = 0; i < priv->num_gphy_fw; i++)
		FUNC11(priv, &priv->gphy_fw[i]);
	return err;
}