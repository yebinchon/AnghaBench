#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_stmmacenet_data {int (* init ) (struct platform_device*,struct oxnas_dwmac*) ;struct oxnas_dwmac* bsp_priv; int /*<<< orphan*/  (* exit ) (struct platform_device*,struct oxnas_dwmac*) ;} ;
struct oxnas_dwmac {struct plat_stmmacenet_data* clk; struct plat_stmmacenet_data* regmap; TYPE_1__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct plat_stmmacenet_data* FUNC3 (TYPE_1__*,char*) ; 
 struct oxnas_dwmac* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct oxnas_dwmac*) ; 
 int FUNC6 (struct platform_device*,struct oxnas_dwmac*) ; 
 int FUNC7 (TYPE_1__*,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC8 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC9 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct plat_stmmacenet_data*) ; 
 struct plat_stmmacenet_data* FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct oxnas_dwmac *dwmac;
	int ret;

	ret = FUNC8(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC9(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	dwmac = FUNC4(&pdev->dev, sizeof(*dwmac), GFP_KERNEL);
	if (!dwmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	dwmac->dev = &pdev->dev;
	plat_dat->bsp_priv = dwmac;
	plat_dat->init = oxnas_dwmac_init;
	plat_dat->exit = oxnas_dwmac_exit;

	dwmac->regmap = FUNC11(pdev->dev.of_node,
							"oxsemi,sys-ctrl");
	if (FUNC0(dwmac->regmap)) {
		FUNC2(&pdev->dev, "failed to have sysctrl regmap\n");
		ret = FUNC1(dwmac->regmap);
		goto err_remove_config_dt;
	}

	dwmac->clk = FUNC3(&pdev->dev, "gmac");
	if (FUNC0(dwmac->clk)) {
		ret = FUNC1(dwmac->clk);
		goto err_remove_config_dt;
	}

	ret = FUNC6(pdev, plat_dat->bsp_priv);
	if (ret)
		goto err_remove_config_dt;

	ret = FUNC7(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_dwmac_exit;


	return 0;

err_dwmac_exit:
	FUNC5(pdev, plat_dat->bsp_priv);
err_remove_config_dt:
	FUNC10(pdev, plat_dat);

	return ret;
}