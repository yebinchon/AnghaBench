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
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct stm32_ops {int dummy; } ;
struct stm32_dwmac {int /*<<< orphan*/ * dev; struct stm32_ops const* ops; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {struct stm32_dwmac* bsp_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct stm32_dwmac* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct stm32_ops* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_dwmac*) ; 
 int FUNC6 (struct plat_stmmacenet_data*) ; 
 int FUNC7 (struct stm32_dwmac*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC9 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC10 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct stm32_dwmac *dwmac;
	const struct stm32_ops *data;
	int ret;

	ret = FUNC9(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC10(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	dwmac = FUNC3(&pdev->dev, sizeof(*dwmac), GFP_KERNEL);
	if (!dwmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	data = FUNC4(&pdev->dev);
	if (!data) {
		FUNC2(&pdev->dev, "no of match data provided\n");
		ret = -EINVAL;
		goto err_remove_config_dt;
	}

	dwmac->ops = data;
	dwmac->dev = &pdev->dev;

	ret = FUNC7(dwmac, &pdev->dev);
	if (ret) {
		FUNC2(&pdev->dev, "Unable to parse OF data\n");
		goto err_remove_config_dt;
	}

	plat_dat->bsp_priv = dwmac;

	ret = FUNC6(plat_dat);
	if (ret)
		goto err_remove_config_dt;

	ret = FUNC8(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_clk_disable;

	return 0;

err_clk_disable:
	FUNC5(dwmac);
err_remove_config_dt:
	FUNC11(pdev, plat_dat);

	return ret;
}