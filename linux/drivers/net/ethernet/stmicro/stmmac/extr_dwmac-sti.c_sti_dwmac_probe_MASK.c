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
struct sti_dwmac_of_data {int /*<<< orphan*/  fix_retime_src; } ;
struct sti_dwmac {int /*<<< orphan*/  clk; int /*<<< orphan*/  fix_retime_src; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {int /*<<< orphan*/  fix_mac_speed; struct sti_dwmac* bsp_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct sti_dwmac* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct sti_dwmac_of_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct sti_dwmac*,struct platform_device*) ; 
 int FUNC8 (struct sti_dwmac*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC10 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC11 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	const struct sti_dwmac_of_data *data;
	struct stmmac_resources stmmac_res;
	struct sti_dwmac *dwmac;
	int ret;

	data = FUNC6(&pdev->dev);
	if (!data) {
		FUNC4(&pdev->dev, "No OF match data provided\n");
		return -EINVAL;
	}

	ret = FUNC10(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC11(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	dwmac = FUNC5(&pdev->dev, sizeof(*dwmac), GFP_KERNEL);
	if (!dwmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	ret = FUNC7(dwmac, pdev);
	if (ret) {
		FUNC4(&pdev->dev, "Unable to parse OF data\n");
		goto err_remove_config_dt;
	}

	dwmac->fix_retime_src = data->fix_retime_src;

	plat_dat->bsp_priv = dwmac;
	plat_dat->fix_mac_speed = data->fix_retime_src;

	ret = FUNC3(dwmac->clk);
	if (ret)
		goto err_remove_config_dt;

	ret = FUNC8(dwmac);
	if (ret)
		goto disable_clk;

	ret = FUNC9(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto disable_clk;

	return 0;

disable_clk:
	FUNC2(dwmac->clk);
err_remove_config_dt:
	FUNC12(pdev, plat_dat);

	return ret;
}