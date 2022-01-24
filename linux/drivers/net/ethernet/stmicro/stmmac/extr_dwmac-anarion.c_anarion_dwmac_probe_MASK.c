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
struct plat_stmmacenet_data {struct plat_stmmacenet_data* bsp_priv; int /*<<< orphan*/  exit; int /*<<< orphan*/  (* init ) (struct platform_device*,struct plat_stmmacenet_data*) ;} ;
struct anarion_gmac {struct anarion_gmac* bsp_priv; int /*<<< orphan*/  exit; int /*<<< orphan*/  (* init ) (struct platform_device*,struct plat_stmmacenet_data*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 struct plat_stmmacenet_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  anarion_gmac_exit ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,struct plat_stmmacenet_data*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC5 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int ret;
	struct anarion_gmac *gmac;
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;

	ret = FUNC5(pdev, &stmmac_res);
	if (ret)
		return ret;

	gmac = FUNC2(pdev);
	if (FUNC0(gmac))
		return FUNC1(gmac);

	plat_dat = FUNC6(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	plat_dat->init = anarion_gmac_init;
	plat_dat->exit = anarion_gmac_exit;
	FUNC3(pdev, gmac);
	plat_dat->bsp_priv = gmac;

	ret = FUNC4(&pdev->dev, plat_dat, &stmmac_res);
	if (ret) {
		FUNC7(pdev, plat_dat);
		return ret;
	}

	return 0;
}