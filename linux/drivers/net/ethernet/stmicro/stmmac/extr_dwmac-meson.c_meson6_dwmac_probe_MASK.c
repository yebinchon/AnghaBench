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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {int /*<<< orphan*/  fix_mac_speed; struct meson_dwmac* bsp_priv; } ;
struct meson_dwmac {struct plat_stmmacenet_data* reg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 struct meson_dwmac* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct plat_stmmacenet_data* FUNC3 (struct platform_device*,int) ; 
 int /*<<< orphan*/  meson6_dwmac_fix_mac_speed ; 
 int FUNC4 (int /*<<< orphan*/ *,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC5 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct meson_dwmac *dwmac;
	int ret;

	ret = FUNC5(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC6(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	dwmac = FUNC2(&pdev->dev, sizeof(*dwmac), GFP_KERNEL);
	if (!dwmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	dwmac->reg = FUNC3(pdev, 1);
	if (FUNC0(dwmac->reg)) {
		ret = FUNC1(dwmac->reg);
		goto err_remove_config_dt;
	}

	plat_dat->bsp_priv = dwmac;
	plat_dat->fix_mac_speed = meson6_dwmac_fix_mac_speed;

	ret = FUNC4(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_remove_config_dt;

	return 0;

err_remove_config_dt:
	FUNC7(pdev, plat_dat);

	return ret;
}