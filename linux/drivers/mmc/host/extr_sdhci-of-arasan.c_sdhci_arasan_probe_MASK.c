#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct TYPE_8__ {int /*<<< orphan*/  start_signal_voltage_switch; int /*<<< orphan*/  hs400_enhanced_strobe; } ;
struct sdhci_host {TYPE_4__* mmc; TYPE_1__ mmc_host_ops; } ;
struct sdhci_arasan_of_data {int /*<<< orphan*/  soc_ctl_map; int /*<<< orphan*/  pdata; } ;
struct sdhci_arasan_data {int has_cqe; struct sdhci_host* clk_ahb; struct sdhci_host* phy; int /*<<< orphan*/  quirks; struct sdhci_host* soc_ctl_base; int /*<<< orphan*/  soc_ctl_map; struct sdhci_host* host; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct sdhci_arasan_of_data* data; } ;
struct device_node {int dummy; } ;
struct clk {TYPE_4__* mmc; TYPE_1__ mmc_host_ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  caps2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int EPROBE_DEFER ; 
 struct sdhci_host* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  MMC_CAP2_CQE ; 
 int /*<<< orphan*/  MMC_CAP2_CQE_DCMD ; 
 int FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE ; 
 int /*<<< orphan*/  SDHCI_ARASAN_QUIRK_FORCE_CDTEST ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 struct sdhci_host* FUNC7 (TYPE_2__*,char*) ; 
 int FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 struct device_node* FUNC12 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*) ; 
 int FUNC15 (struct sdhci_host*) ; 
 int FUNC16 (struct sdhci_arasan_data*) ; 
 int /*<<< orphan*/  sdhci_arasan_hs400_enhanced_strobe ; 
 int /*<<< orphan*/  sdhci_arasan_of_match ; 
 int FUNC17 (struct sdhci_arasan_data*,struct sdhci_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC20 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  sdhci_arasan_voltage_switch ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*) ; 
 struct sdhci_host* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct sdhci_arasan_data* FUNC24 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC25 (struct sdhci_host*) ; 
 struct sdhci_host* FUNC26 (struct device_node*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	int ret;
	const struct of_device_id *match;
	struct device_node *node;
	struct clk *clk_xin;
	struct sdhci_host *host;
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_arasan_data *sdhci_arasan;
	struct device_node *np = pdev->dev.of_node;
	const struct sdhci_arasan_of_data *data;

	match = FUNC10(sdhci_arasan_of_match, pdev->dev.of_node);
	data = match->data;
	host = FUNC23(pdev, data->pdata, sizeof(*sdhci_arasan));

	if (FUNC1(host))
		return FUNC2(host);

	pltfm_host = FUNC25(host);
	sdhci_arasan = FUNC24(pltfm_host);
	sdhci_arasan->host = host;

	sdhci_arasan->soc_ctl_map = data->soc_ctl_map;

	node = FUNC12(pdev->dev.of_node, "arasan,soc-ctl-syscon", 0);
	if (node) {
		sdhci_arasan->soc_ctl_base = FUNC26(node);
		FUNC11(node);

		if (FUNC1(sdhci_arasan->soc_ctl_base)) {
			ret = FUNC2(sdhci_arasan->soc_ctl_base);
			if (ret != -EPROBE_DEFER)
				FUNC5(&pdev->dev, "Can't get syscon: %d\n",
					ret);
			goto err_pltfm_free;
		}
	}

	sdhci_arasan->clk_ahb = FUNC6(&pdev->dev, "clk_ahb");
	if (FUNC1(sdhci_arasan->clk_ahb)) {
		FUNC5(&pdev->dev, "clk_ahb clock not found.\n");
		ret = FUNC2(sdhci_arasan->clk_ahb);
		goto err_pltfm_free;
	}

	clk_xin = FUNC6(&pdev->dev, "clk_xin");
	if (FUNC1(clk_xin)) {
		FUNC5(&pdev->dev, "clk_xin clock not found.\n");
		ret = FUNC2(clk_xin);
		goto err_pltfm_free;
	}

	ret = FUNC4(sdhci_arasan->clk_ahb);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to enable AHB clock.\n");
		goto err_pltfm_free;
	}

	ret = FUNC4(clk_xin);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to enable SD clock.\n");
		goto clk_dis_ahb;
	}

	FUNC21(pdev);

	if (FUNC13(np, "xlnx,fails-without-test-cd"))
		sdhci_arasan->quirks |= SDHCI_ARASAN_QUIRK_FORCE_CDTEST;

	if (FUNC13(np, "xlnx,int-clock-stable-broken"))
		sdhci_arasan->quirks |= SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE;

	pltfm_host->clk = clk_xin;

	if (FUNC9(pdev->dev.of_node,
				    "rockchip,rk3399-sdhci-5.1"))
		FUNC20(host, 0x0);

	FUNC19(host);

	ret = FUNC17(sdhci_arasan, clk_xin, &pdev->dev);
	if (ret)
		goto clk_disable_all;

	ret = FUNC8(host->mmc);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC5(&pdev->dev, "parsing dt failed (%d)\n", ret);
		goto unreg_clk;
	}

	sdhci_arasan->phy = FUNC0(-ENODEV);
	if (FUNC9(pdev->dev.of_node,
				    "arasan,sdhci-5.1")) {
		sdhci_arasan->phy = FUNC7(&pdev->dev,
						 "phy_arasan");
		if (FUNC1(sdhci_arasan->phy)) {
			ret = FUNC2(sdhci_arasan->phy);
			FUNC5(&pdev->dev, "No phy for arasan,sdhci-5.1.\n");
			goto unreg_clk;
		}

		ret = FUNC15(sdhci_arasan->phy);
		if (ret < 0) {
			FUNC5(&pdev->dev, "phy_init err.\n");
			goto unreg_clk;
		}

		host->mmc_host_ops.hs400_enhanced_strobe =
					sdhci_arasan_hs400_enhanced_strobe;
		host->mmc_host_ops.start_signal_voltage_switch =
					sdhci_arasan_voltage_switch;
		sdhci_arasan->has_cqe = true;
		host->mmc->caps2 |= MMC_CAP2_CQE;

		if (!FUNC13(np, "disable-cqe-dcmd"))
			host->mmc->caps2 |= MMC_CAP2_CQE_DCMD;
	}

	ret = FUNC16(sdhci_arasan);
	if (ret)
		goto err_add_host;

	return 0;

err_add_host:
	if (!FUNC1(sdhci_arasan->phy))
		FUNC14(sdhci_arasan->phy);
unreg_clk:
	FUNC18(&pdev->dev);
clk_disable_all:
	FUNC3(clk_xin);
clk_dis_ahb:
	FUNC3(sdhci_arasan->clk_ahb);
err_pltfm_free:
	FUNC22(pdev);
	return ret;
}