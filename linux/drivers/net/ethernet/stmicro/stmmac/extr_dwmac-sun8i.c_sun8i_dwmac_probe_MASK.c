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
struct sunxi_priv_data {TYPE_1__* variant; struct regmap* regmap_field; struct regmap* regulator; struct regmap* tx_clk; } ;
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct stmmac_priv {int dummy; } ;
struct regmap {int interface; int tx_coe; int has_sun8i; int (* init ) (struct platform_device*,struct sunxi_priv_data*) ;struct sunxi_priv_data* bsp_priv; int /*<<< orphan*/  setup; int /*<<< orphan*/  (* exit ) (struct platform_device*,struct sunxi_priv_data*) ;int /*<<< orphan*/  rx_coe; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {int interface; int tx_coe; int has_sun8i; int (* init ) (struct platform_device*,struct sunxi_priv_data*) ;struct sunxi_priv_data* bsp_priv; int /*<<< orphan*/  setup; int /*<<< orphan*/  (* exit ) (struct platform_device*,struct sunxi_priv_data*) ;int /*<<< orphan*/  rx_coe; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ soc_has_internal_phy; int /*<<< orphan*/ * syscon_field; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  STMMAC_RX_COE_TYPE2 ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct net_device* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct regmap* FUNC5 (struct device*,char*) ; 
 struct sunxi_priv_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC7 (struct device*,struct regmap*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct stmmac_priv*) ; 
 struct stmmac_priv* FUNC10 (struct net_device*) ; 
 TYPE_1__* FUNC11 (struct device*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,struct regmap*,struct stmmac_resources*) ; 
 int FUNC14 (struct platform_device*,struct stmmac_resources*) ; 
 struct regmap* FUNC15 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct sunxi_priv_data*) ; 
 struct regmap* FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (struct platform_device*,struct sunxi_priv_data*) ; 
 int FUNC19 (struct stmmac_priv*) ; 
 int FUNC20 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  sun8i_dwmac_setup ; 
 int /*<<< orphan*/  FUNC21 (struct sunxi_priv_data*) ; 
 struct regmap* FUNC22 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct sunxi_priv_data *gmac;
	struct device *dev = &pdev->dev;
	int ret;
	struct stmmac_priv *priv;
	struct net_device *ndev;
	struct regmap *regmap;

	ret = FUNC14(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC15(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	gmac = FUNC6(dev, sizeof(*gmac), GFP_KERNEL);
	if (!gmac)
		return -ENOMEM;

	gmac->variant = FUNC11(&pdev->dev);
	if (!gmac->variant) {
		FUNC2(&pdev->dev, "Missing dwmac-sun8i variant\n");
		return -EINVAL;
	}

	gmac->tx_clk = FUNC5(dev, "stmmaceth");
	if (FUNC0(gmac->tx_clk)) {
		FUNC2(dev, "Could not get TX clock\n");
		return FUNC1(gmac->tx_clk);
	}

	/* Optional regulator for PHY */
	gmac->regulator = FUNC8(dev, "phy");
	if (FUNC0(gmac->regulator)) {
		if (FUNC1(gmac->regulator) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC4(dev, "No regulator found\n");
		gmac->regulator = NULL;
	}

	/* The "GMAC clock control" register might be located in the
	 * CCU address range (on the R40), or the system control address
	 * range (on most other sun8i and later SoCs).
	 *
	 * The former controls most if not all clocks in the SoC. The
	 * latter has an SoC identification register, and on some SoCs,
	 * controls to map device specific SRAM to either the intended
	 * peripheral, or the CPU address space.
	 *
	 * In either case, there should be a coordinated and restricted
	 * method of accessing the register needed here. This is done by
	 * having the device export a custom regmap, instead of a generic
	 * syscon, which grants all access to all registers.
	 *
	 * To support old device trees, we fall back to using the syscon
	 * interface if possible.
	 */
	regmap = FUNC17(pdev->dev.of_node);
	if (FUNC0(regmap))
		regmap = FUNC22(pdev->dev.of_node,
							 "syscon");
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		FUNC2(&pdev->dev, "Unable to map syscon: %d\n", ret);
		return ret;
	}

	gmac->regmap_field = FUNC7(dev, regmap,
						     *gmac->variant->syscon_field);
	if (FUNC0(gmac->regmap_field)) {
		ret = FUNC1(gmac->regmap_field);
		FUNC2(dev, "Unable to map syscon register: %d\n", ret);
		return ret;
	}

	ret = FUNC12(dev->of_node);
	if (ret < 0)
		return -EINVAL;
	plat_dat->interface = ret;

	/* platform data specifying hardware features and callbacks.
	 * hardware features were copied from Allwinner drivers.
	 */
	plat_dat->rx_coe = STMMAC_RX_COE_TYPE2;
	plat_dat->tx_coe = 1;
	plat_dat->has_sun8i = true;
	plat_dat->bsp_priv = gmac;
	plat_dat->init = sun8i_dwmac_init;
	plat_dat->exit = sun8i_dwmac_exit;
	plat_dat->setup = sun8i_dwmac_setup;

	ret = FUNC18(pdev, plat_dat->bsp_priv);
	if (ret)
		return ret;

	ret = FUNC13(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto dwmac_exit;

	ndev = FUNC3(&pdev->dev);
	priv = FUNC10(ndev);
	/* The mux must be registered after parent MDIO
	 * so after stmmac_dvr_probe()
	 */
	if (gmac->variant->soc_has_internal_phy) {
		ret = FUNC9(priv);
		if (ret)
			goto dwmac_exit;
		ret = FUNC19(priv);
		if (ret) {
			FUNC2(&pdev->dev, "Failed to register mux\n");
			goto dwmac_mux;
		}
	} else {
		ret = FUNC20(priv);
		if (ret)
			goto dwmac_exit;
	}

	return ret;
dwmac_mux:
	FUNC21(gmac);
dwmac_exit:
	FUNC16(pdev, plat_dat->bsp_priv);
return ret;
}