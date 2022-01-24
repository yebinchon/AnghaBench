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
struct sunxi_priv_data {struct plat_stmmacenet_data* regulator; struct plat_stmmacenet_data* tx_clk; int /*<<< orphan*/  interface; } ;
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {int tx_coe; int has_gmac; int (* init ) (struct platform_device*,struct sunxi_priv_data*) ;struct sunxi_priv_data* bsp_priv; int /*<<< orphan*/  fix_mac_speed; int /*<<< orphan*/  (* exit ) (struct platform_device*,struct sunxi_priv_data*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct plat_stmmacenet_data* FUNC4 (struct device*,char*) ; 
 struct sunxi_priv_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct plat_stmmacenet_data* FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC9 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC10 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  sun7i_fix_speed ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct sunxi_priv_data*) ; 
 int FUNC13 (struct platform_device*,struct sunxi_priv_data*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct sunxi_priv_data *gmac;
	struct device *dev = &pdev->dev;
	int ret;

	ret = FUNC9(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC10(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	gmac = FUNC5(dev, sizeof(*gmac), GFP_KERNEL);
	if (!gmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	gmac->interface = FUNC7(dev->of_node);

	gmac->tx_clk = FUNC4(dev, "allwinner_gmac_tx");
	if (FUNC0(gmac->tx_clk)) {
		FUNC2(dev, "could not get tx clock\n");
		ret = FUNC1(gmac->tx_clk);
		goto err_remove_config_dt;
	}

	/* Optional regulator for PHY */
	gmac->regulator = FUNC6(dev, "phy");
	if (FUNC0(gmac->regulator)) {
		if (FUNC1(gmac->regulator) == -EPROBE_DEFER) {
			ret = -EPROBE_DEFER;
			goto err_remove_config_dt;
		}
		FUNC3(dev, "no regulator found\n");
		gmac->regulator = NULL;
	}

	/* platform data specifying hardware features and callbacks.
	 * hardware features were copied from Allwinner drivers. */
	plat_dat->tx_coe = 1;
	plat_dat->has_gmac = true;
	plat_dat->bsp_priv = gmac;
	plat_dat->init = sun7i_gmac_init;
	plat_dat->exit = sun7i_gmac_exit;
	plat_dat->fix_mac_speed = sun7i_fix_speed;

	ret = FUNC13(pdev, plat_dat->bsp_priv);
	if (ret)
		goto err_remove_config_dt;

	ret = FUNC8(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_gmac_exit;

	return 0;

err_gmac_exit:
	FUNC12(pdev, plat_dat->bsp_priv);
err_remove_config_dt:
	FUNC11(pdev, plat_dat);

	return ret;
}