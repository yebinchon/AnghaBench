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
typedef  int /*<<< orphan*/  u8 ;
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct regmap {int has_gmac; scalar_t__ interface; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_stmmacenet_data {int has_gmac; scalar_t__ interface; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  LPC18XX_CREG_CREG6 ; 
 int /*<<< orphan*/  LPC18XX_CREG_CREG6_ETHMODE_MASK ; 
 int /*<<< orphan*/  LPC18XX_CREG_CREG6_ETHMODE_MII ; 
 int /*<<< orphan*/  LPC18XX_CREG_CREG6_ETHMODE_RMII ; 
 scalar_t__ PHY_INTERFACE_MODE_MII ; 
 scalar_t__ PHY_INTERFACE_MODE_RMII ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct regmap*,struct stmmac_resources*) ; 
 int FUNC5 (struct platform_device*,struct stmmac_resources*) ; 
 struct regmap* FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct regmap*) ; 
 struct regmap* FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct regmap *reg;
	u8 ethmode;
	int ret;

	ret = FUNC5(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC6(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	plat_dat->has_gmac = true;

	reg = FUNC8("nxp,lpc1850-creg");
	if (FUNC0(reg)) {
		FUNC2(&pdev->dev, "syscon lookup failed\n");
		ret = FUNC1(reg);
		goto err_remove_config_dt;
	}

	if (plat_dat->interface == PHY_INTERFACE_MODE_MII) {
		ethmode = LPC18XX_CREG_CREG6_ETHMODE_MII;
	} else if (plat_dat->interface == PHY_INTERFACE_MODE_RMII) {
		ethmode = LPC18XX_CREG_CREG6_ETHMODE_RMII;
	} else {
		FUNC2(&pdev->dev, "Only MII and RMII mode supported\n");
		ret = -EINVAL;
		goto err_remove_config_dt;
	}

	FUNC3(reg, LPC18XX_CREG_CREG6,
			   LPC18XX_CREG_CREG6_ETHMODE_MASK, ethmode);

	ret = FUNC4(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_remove_config_dt;

	return 0;

err_remove_config_dt:
	FUNC7(pdev, plat_dat);

	return ret;
}