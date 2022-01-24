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
struct plat_stmmacenet_data {struct meson8b_dwmac* bsp_priv; } ;
struct meson8b_dwmac_data {int (* set_phy_mode ) (struct meson8b_dwmac*) ;} ;
struct meson8b_dwmac {int tx_delay_ns; struct meson8b_dwmac_data const* data; scalar_t__ phy_mode; TYPE_1__* dev; struct plat_stmmacenet_data* regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct meson8b_dwmac* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct plat_stmmacenet_data* FUNC4 (struct platform_device*,int) ; 
 int FUNC5 (struct meson8b_dwmac*) ; 
 int FUNC6 (struct meson8b_dwmac*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC10 (TYPE_1__*,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC11 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC12 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct plat_stmmacenet_data*) ; 
 int FUNC14 (struct meson8b_dwmac*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct meson8b_dwmac *dwmac;
	int ret;

	ret = FUNC11(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC12(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	dwmac = FUNC3(&pdev->dev, sizeof(*dwmac), GFP_KERNEL);
	if (!dwmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	dwmac->data = (const struct meson8b_dwmac_data *)
		FUNC7(&pdev->dev);
	if (!dwmac->data) {
		ret = -EINVAL;
		goto err_remove_config_dt;
	}
	dwmac->regs = FUNC4(pdev, 1);
	if (FUNC0(dwmac->regs)) {
		ret = FUNC1(dwmac->regs);
		goto err_remove_config_dt;
	}

	dwmac->dev = &pdev->dev;
	dwmac->phy_mode = FUNC8(pdev->dev.of_node);
	if ((int)dwmac->phy_mode < 0) {
		FUNC2(&pdev->dev, "missing phy-mode property\n");
		ret = -EINVAL;
		goto err_remove_config_dt;
	}

	/* use 2ns as fallback since this value was previously hardcoded */
	if (FUNC9(pdev->dev.of_node, "amlogic,tx-delay-ns",
				 &dwmac->tx_delay_ns))
		dwmac->tx_delay_ns = 2;

	ret = FUNC6(dwmac);
	if (ret)
		goto err_remove_config_dt;

	ret = dwmac->data->set_phy_mode(dwmac);
	if (ret)
		goto err_remove_config_dt;

	ret = FUNC5(dwmac);
	if (ret)
		goto err_remove_config_dt;

	plat_dat->bsp_priv = dwmac;

	ret = FUNC10(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_remove_config_dt;

	return 0;

err_remove_config_dt:
	FUNC13(pdev, plat_dat);

	return ret;
}