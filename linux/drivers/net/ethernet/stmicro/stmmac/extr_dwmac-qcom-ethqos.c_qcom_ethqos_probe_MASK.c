#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stmmac_resources {int /*<<< orphan*/  mac; } ;
struct resource {int dummy; } ;
struct qcom_ethqos {struct plat_stmmacenet_data* rgmii_clk; int /*<<< orphan*/  speed; int /*<<< orphan*/  por; struct plat_stmmacenet_data* rgmii_base; struct platform_device* pdev; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_stmmacenet_data {int has_gmac4; int pmt; int /*<<< orphan*/  tso_en; int /*<<< orphan*/  fix_mac_speed; struct qcom_ethqos* bsp_priv; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct plat_stmmacenet_data*) ; 
 int FUNC1 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  FUNC2 (struct plat_stmmacenet_data*) ; 
 int FUNC3 (struct plat_stmmacenet_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct plat_stmmacenet_data* FUNC5 (TYPE_1__*,char*) ; 
 struct plat_stmmacenet_data* FUNC6 (TYPE_1__*,struct resource*) ; 
 struct qcom_ethqos* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethqos_fix_mac_speed ; 
 int /*<<< orphan*/  FUNC8 (struct qcom_ethqos*) ; 
 int /*<<< orphan*/  FUNC9 (struct qcom_ethqos*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct qcom_ethqos*) ; 
 int FUNC14 (TYPE_1__*,struct plat_stmmacenet_data*,struct stmmac_resources*) ; 
 int FUNC15 (struct platform_device*,struct stmmac_resources*) ; 
 struct plat_stmmacenet_data* FUNC16 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct plat_stmmacenet_data*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct plat_stmmacenet_data *plat_dat;
	struct stmmac_resources stmmac_res;
	struct qcom_ethqos *ethqos;
	struct resource *res;
	int ret;

	ret = FUNC15(pdev, &stmmac_res);
	if (ret)
		return ret;

	plat_dat = FUNC16(pdev, &stmmac_res.mac);
	if (FUNC0(plat_dat)) {
		FUNC4(&pdev->dev, "dt configuration failed\n");
		return FUNC1(plat_dat);
	}

	ethqos = FUNC7(&pdev->dev, sizeof(*ethqos), GFP_KERNEL);
	if (!ethqos) {
		ret = -ENOMEM;
		goto err_mem;
	}

	ethqos->pdev = pdev;
	res = FUNC12(pdev, IORESOURCE_MEM, "rgmii");
	ethqos->rgmii_base = FUNC6(&pdev->dev, res);
	if (FUNC0(ethqos->rgmii_base)) {
		FUNC4(&pdev->dev, "Can't get rgmii base\n");
		ret = FUNC1(ethqos->rgmii_base);
		goto err_mem;
	}

	ethqos->por = FUNC10(&pdev->dev);

	ethqos->rgmii_clk = FUNC5(&pdev->dev, "rgmii");
	if (FUNC0(ethqos->rgmii_clk)) {
		ret = FUNC1(ethqos->rgmii_clk);
		goto err_mem;
	}

	ret = FUNC3(ethqos->rgmii_clk);
	if (ret)
		goto err_mem;

	ethqos->speed = SPEED_1000;
	FUNC9(ethqos, SPEED_1000);
	FUNC8(ethqos);

	plat_dat->bsp_priv = ethqos;
	plat_dat->fix_mac_speed = ethqos_fix_mac_speed;
	plat_dat->has_gmac4 = 1;
	plat_dat->pmt = 1;
	plat_dat->tso_en = FUNC11(np, "snps,tso");

	ret = FUNC14(&pdev->dev, plat_dat, &stmmac_res);
	if (ret)
		goto err_clk;

	FUNC13(ethqos);

	return ret;

err_clk:
	FUNC2(ethqos->rgmii_clk);

err_mem:
	FUNC17(pdev, plat_dat);

	return ret;
}