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
struct plat_stmmacenet_data {int has_gmac4; int riwt_off; int /*<<< orphan*/  exit; int /*<<< orphan*/  (* init ) (struct platform_device*,struct mediatek_dwmac_plat_data*) ;struct mediatek_dwmac_plat_data* bsp_priv; int /*<<< orphan*/  maxmtu; scalar_t__ pmt; scalar_t__ has_gmac; int /*<<< orphan*/  interface; } ;
struct mediatek_dwmac_plat_data {int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  np; TYPE_1__* dev; int /*<<< orphan*/  variant; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_DATA_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct mediatek_dwmac_plat_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mediatek_dwmac_plat_data*) ; 
 int FUNC5 (struct mediatek_dwmac_plat_data*) ; 
 int /*<<< orphan*/  mediatek_dwmac_exit ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mediatek_dwmac_plat_data*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC9 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC10 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct mediatek_dwmac_plat_data *priv_plat;
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	int ret;

	priv_plat = FUNC3(&pdev->dev, sizeof(*priv_plat), GFP_KERNEL);
	if (!priv_plat)
		return -ENOMEM;

	priv_plat->variant = FUNC7(&pdev->dev);
	if (!priv_plat->variant) {
		FUNC2(&pdev->dev, "Missing dwmac-mediatek variant\n");
		return -EINVAL;
	}

	priv_plat->dev = &pdev->dev;
	priv_plat->np = pdev->dev.of_node;

	ret = FUNC5(priv_plat);
	if (ret)
		return ret;

	ret = FUNC4(priv_plat);
	if (ret)
		return ret;

	ret = FUNC9(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC10(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	plat_dat->interface = priv_plat->phy_mode;
	plat_dat->has_gmac4 = 1;
	plat_dat->has_gmac = 0;
	plat_dat->pmt = 0;
	plat_dat->riwt_off = 1;
	plat_dat->maxmtu = ETH_DATA_LEN;
	plat_dat->bsp_priv = priv_plat;
	plat_dat->init = mediatek_dwmac_init;
	plat_dat->exit = mediatek_dwmac_exit;
	FUNC6(pdev, priv_plat);

	ret = FUNC8(&pdev->dev, plat_dat, &stmmac_res);
	if (ret) {
		FUNC11(pdev, plat_dat);
		return ret;
	}

	return 0;
}