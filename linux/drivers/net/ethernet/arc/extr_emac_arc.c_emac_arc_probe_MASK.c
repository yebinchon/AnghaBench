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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct net_device {int dummy; } ;
struct arc_emac_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  drv_version; int /*<<< orphan*/  drv_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct device*) ; 
 struct net_device* FUNC2 (int) ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct arc_emac_priv* FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct net_device *ndev;
	struct arc_emac_priv *priv;
	int interface, err;

	if (!dev->of_node)
		return -ENODEV;

	ndev = FUNC2(sizeof(struct arc_emac_priv));
	if (!ndev)
		return -ENOMEM;
	FUNC9(pdev, ndev);
	FUNC1(ndev, dev);

	priv = FUNC7(ndev);
	priv->drv_name = DRV_NAME;
	priv->drv_version = DRV_VERSION;

	interface = FUNC8(dev->of_node);
	if (interface < 0)
		interface = PHY_INTERFACE_MODE_MII;

	priv->clk = FUNC5(dev, "hclk");
	if (FUNC0(priv->clk)) {
		FUNC4(dev, "failed to retrieve host clock from device tree\n");
		err = -EINVAL;
		goto out_netdev;
	}

	err = FUNC3(ndev, interface);
out_netdev:
	if (err)
		FUNC6(ndev);
	return err;
}