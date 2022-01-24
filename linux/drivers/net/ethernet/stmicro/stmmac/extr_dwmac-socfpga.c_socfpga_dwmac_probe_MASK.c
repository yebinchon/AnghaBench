#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct stmmac_priv {TYPE_1__* plat; } ;
struct socfpga_dwmac_ops {int (* set_phy_mode ) (struct socfpga_dwmac*) ;} ;
struct socfpga_dwmac {int /*<<< orphan*/  stmmac_rst; struct socfpga_dwmac_ops const* ops; struct plat_stmmacenet_data* stmmac_ocp_rst; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {int /*<<< orphan*/  fix_mac_speed; struct socfpga_dwmac* bsp_priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stmmac_rst; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct socfpga_dwmac_ops* FUNC3 (struct device*) ; 
 struct socfpga_dwmac* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct plat_stmmacenet_data* FUNC5 (struct device*,char*) ; 
 struct stmmac_priv* FUNC6 (struct net_device*) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  socfpga_dwmac_fix_mac_speed ; 
 int FUNC9 (struct socfpga_dwmac*,struct device*) ; 
 int FUNC10 (struct device*,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC13 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct plat_stmmacenet_data*) ; 
 int FUNC15 (struct socfpga_dwmac*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct device		*dev = &pdev->dev;
	int			ret;
	struct socfpga_dwmac	*dwmac;
	struct net_device	*ndev;
	struct stmmac_priv	*stpriv;
	const struct socfpga_dwmac_ops *ops;

	ops = FUNC3(&pdev->dev);
	if (!ops) {
		FUNC2(&pdev->dev, "no of match data provided\n");
		return -EINVAL;
	}

	ret = FUNC12(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC13(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat))
		return FUNC1(plat_dat);

	dwmac = FUNC4(dev, sizeof(*dwmac), GFP_KERNEL);
	if (!dwmac) {
		ret = -ENOMEM;
		goto err_remove_config_dt;
	}

	dwmac->stmmac_ocp_rst = FUNC5(dev, "stmmaceth-ocp");
	if (FUNC0(dwmac->stmmac_ocp_rst)) {
		ret = FUNC1(dwmac->stmmac_ocp_rst);
		FUNC2(dev, "error getting reset control of ocp %d\n", ret);
		goto err_remove_config_dt;
	}

	FUNC8(dwmac->stmmac_ocp_rst);

	ret = FUNC9(dwmac, dev);
	if (ret) {
		FUNC2(dev, "Unable to parse OF data\n");
		goto err_remove_config_dt;
	}

	dwmac->ops = ops;
	plat_dat->bsp_priv = dwmac;
	plat_dat->fix_mac_speed = socfpga_dwmac_fix_mac_speed;

	ret = FUNC10(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_remove_config_dt;

	ndev = FUNC7(pdev);
	stpriv = FUNC6(ndev);

	/* The socfpga driver needs to control the stmmac reset to set the phy
	 * mode. Create a copy of the core reset handle so it can be used by
	 * the driver later.
	 */
	dwmac->stmmac_rst = stpriv->plat->stmmac_rst;

	ret = ops->set_phy_mode(dwmac);
	if (ret)
		goto err_dvr_remove;

	return 0;

err_dvr_remove:
	FUNC11(&pdev->dev);
err_remove_config_dt:
	FUNC14(pdev, plat_dat);

	return ret;
}