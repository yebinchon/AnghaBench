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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bcm_enet_priv {int /*<<< orphan*/  mac_clk; int /*<<< orphan*/  phy_clk; int /*<<< orphan*/  mii_bus; scalar_t__ has_phy; } ;
struct bcm63xx_enet_platform_data {int /*<<< orphan*/  (* mii_config ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENET_MIISC_REG ; 
 int /*<<< orphan*/  bcm_enet_mdio_read_mii ; 
 int /*<<< orphan*/  bcm_enet_mdio_write_mii ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bcm63xx_enet_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct bcm_enet_priv* FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct bcm_enet_priv *priv;
	struct net_device *dev;

	/* stop netdevice */
	dev = FUNC7(pdev);
	priv = FUNC6(dev);
	FUNC9(dev);

	/* turn off mdc clock */
	FUNC2(priv, 0, ENET_MIISC_REG);

	if (priv->has_phy) {
		FUNC5(priv->mii_bus);
		FUNC4(priv->mii_bus);
	} else {
		struct bcm63xx_enet_platform_data *pd;

		pd = FUNC1(&pdev->dev);
		if (pd && pd->mii_config)
			pd->mii_config(dev, 0, bcm_enet_mdio_read_mii,
				       bcm_enet_mdio_write_mii);
	}

	/* disable hw block clocks */
	FUNC0(priv->phy_clk);
	FUNC0(priv->mac_clk);

	FUNC3(dev);
	return 0;
}