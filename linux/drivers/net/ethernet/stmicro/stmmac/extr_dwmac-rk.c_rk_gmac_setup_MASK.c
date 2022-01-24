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
struct rk_priv_data {int clock_input; int tx_delay; int rx_delay; struct platform_device* pdev; scalar_t__ integrated_phy; int /*<<< orphan*/ * phy_reset; int /*<<< orphan*/  grf; int /*<<< orphan*/ * regulator; struct rk_gmac_ops const* ops; int /*<<< orphan*/  phy_iface; } ;
struct rk_gmac_ops {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {scalar_t__ phy_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct rk_priv_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct rk_priv_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,char const**) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct rk_priv_data *FUNC14(struct platform_device *pdev,
					  struct plat_stmmacenet_data *plat,
					  const struct rk_gmac_ops *ops)
{
	struct rk_priv_data *bsp_priv;
	struct device *dev = &pdev->dev;
	int ret;
	const char *strings = NULL;
	int value;

	bsp_priv = FUNC5(dev, sizeof(*bsp_priv), GFP_KERNEL);
	if (!bsp_priv)
		return FUNC0(-ENOMEM);

	bsp_priv->phy_iface = FUNC7(dev->of_node);
	bsp_priv->ops = ops;

	bsp_priv->regulator = FUNC6(dev, "phy");
	if (FUNC1(bsp_priv->regulator)) {
		if (FUNC2(bsp_priv->regulator) == -EPROBE_DEFER) {
			FUNC3(dev, "phy regulator is not available yet, deferred probing\n");
			return FUNC0(-EPROBE_DEFER);
		}
		FUNC3(dev, "no regulator found\n");
		bsp_priv->regulator = NULL;
	}

	ret = FUNC9(dev->of_node, "clock_in_out", &strings);
	if (ret) {
		FUNC3(dev, "Can not read property: clock_in_out.\n");
		bsp_priv->clock_input = true;
	} else {
		FUNC4(dev, "clock input or output? (%s).\n",
			 strings);
		if (!FUNC12(strings, "input"))
			bsp_priv->clock_input = true;
		else
			bsp_priv->clock_input = false;
	}

	ret = FUNC10(dev->of_node, "tx_delay", &value);
	if (ret) {
		bsp_priv->tx_delay = 0x30;
		FUNC3(dev, "Can not read property: tx_delay.");
		FUNC3(dev, "set tx_delay to 0x%x\n",
			bsp_priv->tx_delay);
	} else {
		FUNC4(dev, "TX delay(0x%x).\n", value);
		bsp_priv->tx_delay = value;
	}

	ret = FUNC10(dev->of_node, "rx_delay", &value);
	if (ret) {
		bsp_priv->rx_delay = 0x10;
		FUNC3(dev, "Can not read property: rx_delay.");
		FUNC3(dev, "set rx_delay to 0x%x\n",
			bsp_priv->rx_delay);
	} else {
		FUNC4(dev, "RX delay(0x%x).\n", value);
		bsp_priv->rx_delay = value;
	}

	bsp_priv->grf = FUNC13(dev->of_node,
							"rockchip,grf");

	if (plat->phy_node) {
		bsp_priv->integrated_phy = FUNC8(plat->phy_node,
								 "phy-is-integrated");
		if (bsp_priv->integrated_phy) {
			bsp_priv->phy_reset = FUNC11(plat->phy_node, NULL);
			if (FUNC1(bsp_priv->phy_reset)) {
				FUNC3(&pdev->dev, "No PHY reset control found.\n");
				bsp_priv->phy_reset = NULL;
			}
		}
	}
	FUNC4(dev, "integrated PHY? (%s).\n",
		 bsp_priv->integrated_phy ? "yes" : "no");

	bsp_priv->pdev = pdev;

	return bsp_priv;
}