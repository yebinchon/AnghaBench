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
struct rk_priv_data {int clk_enabled; scalar_t__ phy_iface; void* clk_phy; scalar_t__ integrated_phy; void* clk_mac; scalar_t__ clock_input; void* clk_mac_speed; void* clk_mac_refout; void* clk_mac_ref; void* pclk_mac; void* aclk_mac; void* mac_clk_tx; void* mac_clk_rx; TYPE_1__* pdev; } ;
struct plat_stmmacenet_data {scalar_t__ phy_node; struct rk_priv_data* bsp_priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ PHY_INTERFACE_MODE_RMII ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 void* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct plat_stmmacenet_data *plat)
{
	struct rk_priv_data *bsp_priv = plat->bsp_priv;
	struct device *dev = &bsp_priv->pdev->dev;
	int ret;

	bsp_priv->clk_enabled = false;

	bsp_priv->mac_clk_rx = FUNC5(dev, "mac_clk_rx");
	if (FUNC0(bsp_priv->mac_clk_rx))
		FUNC3(dev, "cannot get clock %s\n",
			"mac_clk_rx");

	bsp_priv->mac_clk_tx = FUNC5(dev, "mac_clk_tx");
	if (FUNC0(bsp_priv->mac_clk_tx))
		FUNC3(dev, "cannot get clock %s\n",
			"mac_clk_tx");

	bsp_priv->aclk_mac = FUNC5(dev, "aclk_mac");
	if (FUNC0(bsp_priv->aclk_mac))
		FUNC3(dev, "cannot get clock %s\n",
			"aclk_mac");

	bsp_priv->pclk_mac = FUNC5(dev, "pclk_mac");
	if (FUNC0(bsp_priv->pclk_mac))
		FUNC3(dev, "cannot get clock %s\n",
			"pclk_mac");

	bsp_priv->clk_mac = FUNC5(dev, "stmmaceth");
	if (FUNC0(bsp_priv->clk_mac))
		FUNC3(dev, "cannot get clock %s\n",
			"stmmaceth");

	if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII) {
		bsp_priv->clk_mac_ref = FUNC5(dev, "clk_mac_ref");
		if (FUNC0(bsp_priv->clk_mac_ref))
			FUNC3(dev, "cannot get clock %s\n",
				"clk_mac_ref");

		if (!bsp_priv->clock_input) {
			bsp_priv->clk_mac_refout =
				FUNC5(dev, "clk_mac_refout");
			if (FUNC0(bsp_priv->clk_mac_refout))
				FUNC3(dev, "cannot get clock %s\n",
					"clk_mac_refout");
		}
	}

	bsp_priv->clk_mac_speed = FUNC5(dev, "clk_mac_speed");
	if (FUNC0(bsp_priv->clk_mac_speed))
		FUNC3(dev, "cannot get clock %s\n", "clk_mac_speed");

	if (bsp_priv->clock_input) {
		FUNC4(dev, "clock input from PHY\n");
	} else {
		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
			FUNC2(bsp_priv->clk_mac, 50000000);
	}

	if (plat->phy_node && bsp_priv->integrated_phy) {
		bsp_priv->clk_phy = FUNC6(plat->phy_node, 0);
		if (FUNC0(bsp_priv->clk_phy)) {
			ret = FUNC1(bsp_priv->clk_phy);
			FUNC3(dev, "Cannot get PHY clock: %d\n", ret);
			return -EINVAL;
		}
		FUNC2(bsp_priv->clk_phy, 50000000);
	}

	return 0;
}