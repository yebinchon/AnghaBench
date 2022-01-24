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
struct rk_gmac_ops {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {int has_gmac; struct plat_stmmacenet_data* bsp_priv; int /*<<< orphan*/  fix_mac_speed; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct rk_gmac_ops* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rk_fix_speed ; 
 int FUNC4 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct plat_stmmacenet_data*) ; 
 int FUNC6 (struct plat_stmmacenet_data*) ; 
 struct plat_stmmacenet_data* FUNC7 (struct platform_device*,struct plat_stmmacenet_data*,struct rk_gmac_ops const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC9 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC10 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	const struct rk_gmac_ops *data;
	int ret;

	data = FUNC3(&pdev->dev);
	if (!data) {
		FUNC2(&pdev->dev, "no of match data provided\n");
		return -EINVAL;
	}

	ret = FUNC9(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC10(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	plat_dat->has_gmac = true;
	plat_dat->fix_mac_speed = rk_fix_speed;

	plat_dat->bsp_priv = FUNC7(pdev, plat_dat, data);
	if (FUNC0(plat_dat->bsp_priv)) {
		ret = FUNC1(plat_dat->bsp_priv);
		goto err_remove_config_dt;
	}

	ret = FUNC4(plat_dat);
	if (ret)
		return ret;

	ret = FUNC6(plat_dat->bsp_priv);
	if (ret)
		goto err_remove_config_dt;

	ret = FUNC8(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_gmac_powerdown;

	return 0;

err_gmac_powerdown:
	FUNC5(plat_dat->bsp_priv);
err_remove_config_dt:
	FUNC11(pdev, plat_dat);

	return ret;
}