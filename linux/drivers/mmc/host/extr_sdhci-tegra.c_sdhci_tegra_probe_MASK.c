#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sdhci_tegra_soc_data {int nvquirks; int /*<<< orphan*/  pdata; } ;
struct sdhci_tegra {int ddr_signaling; int pad_calib_required; int pad_control_available; struct sdhci_host* rst; struct sdhci_host* power_gpio; struct sdhci_tegra_soc_data const* soc_data; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct TYPE_6__ {int /*<<< orphan*/  execute_tuning; int /*<<< orphan*/  hs400_enhanced_strobe; int /*<<< orphan*/  request; int /*<<< orphan*/  start_signal_voltage_switch; } ;
struct sdhci_host {TYPE_3__* mmc; TYPE_2__ mmc_host_ops; TYPE_1__* ops; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {struct sdhci_tegra_soc_data* data; } ;
struct clk {TYPE_3__* mmc; TYPE_2__ mmc_host_ops; TYPE_1__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  caps; } ;
struct TYPE_5__ {int /*<<< orphan*/  platform_execute_tuning; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  MMC_CAP_1_8V_DDR ; 
 int NVQUIRK_ENABLE_DDR50 ; 
 int NVQUIRK_HAS_PADCALIB ; 
 int NVQUIRK_NEEDS_PAD_CONTROL ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 struct sdhci_host* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sdhci_host* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 struct of_device_id* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct sdhci_host*) ; 
 int FUNC12 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*) ; 
 struct sdhci_host* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 struct sdhci_tegra* FUNC15 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC16 (struct sdhci_host*) ; 
 int FUNC17 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_tegra_dt_match ; 
 int /*<<< orphan*/  sdhci_tegra_start_signal_voltage_switch ; 
 int /*<<< orphan*/  tegra_sdhci_execute_hw_tuning ; 
 int /*<<< orphan*/  tegra_sdhci_hs400_enhanced_strobe ; 
 int FUNC18 (int /*<<< orphan*/ *,struct sdhci_tegra*) ; 
 int /*<<< orphan*/  FUNC19 (struct sdhci_host*) ; 
 int /*<<< orphan*/  tegra_sdhci_request ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	const struct of_device_id *match;
	const struct sdhci_tegra_soc_data *soc_data;
	struct sdhci_host *host;
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_tegra *tegra_host;
	struct clk *clk;
	int rc;

	match = FUNC10(sdhci_tegra_dt_match, &pdev->dev);
	if (!match)
		return -EINVAL;
	soc_data = match->data;

	host = FUNC14(pdev, soc_data->pdata, sizeof(*tegra_host));
	if (FUNC0(host))
		return FUNC1(host);
	pltfm_host = FUNC16(host);

	tegra_host = FUNC15(pltfm_host);
	tegra_host->ddr_signaling = false;
	tegra_host->pad_calib_required = false;
	tegra_host->pad_control_available = false;
	tegra_host->soc_data = soc_data;

	if (soc_data->nvquirks & NVQUIRK_NEEDS_PAD_CONTROL) {
		rc = FUNC18(&pdev->dev, tegra_host);
		if (rc == 0)
			host->mmc_host_ops.start_signal_voltage_switch =
				sdhci_tegra_start_signal_voltage_switch;
	}

	/* Hook to periodically rerun pad calibration */
	if (soc_data->nvquirks & NVQUIRK_HAS_PADCALIB)
		host->mmc_host_ops.request = tegra_sdhci_request;

	host->mmc_host_ops.hs400_enhanced_strobe =
			tegra_sdhci_hs400_enhanced_strobe;

	if (!host->ops->platform_execute_tuning)
		host->mmc_host_ops.execute_tuning =
				tegra_sdhci_execute_hw_tuning;

	rc = FUNC9(host->mmc);
	if (rc)
		goto err_parse_dt;

	if (tegra_host->soc_data->nvquirks & NVQUIRK_ENABLE_DDR50)
		host->mmc->caps |= MMC_CAP_1_8V_DDR;

	FUNC19(host);

	tegra_host->power_gpio = FUNC6(&pdev->dev, "power",
							 GPIOD_OUT_HIGH);
	if (FUNC0(tegra_host->power_gpio)) {
		rc = FUNC1(tegra_host->power_gpio);
		goto err_power_req;
	}

	clk = FUNC5(FUNC8(host->mmc), NULL);
	if (FUNC0(clk)) {
		rc = FUNC1(clk);

		if (rc != -EPROBE_DEFER)
			FUNC4(&pdev->dev, "failed to get clock: %d\n", rc);

		goto err_clk_get;
	}
	FUNC3(clk);
	pltfm_host->clk = clk;

	tegra_host->rst = FUNC7(&pdev->dev,
							   "sdhci");
	if (FUNC0(tegra_host->rst)) {
		rc = FUNC1(tegra_host->rst);
		FUNC4(&pdev->dev, "failed to get reset control: %d\n", rc);
		goto err_rst_get;
	}

	rc = FUNC11(tegra_host->rst);
	if (rc)
		goto err_rst_get;

	FUNC20(2000, 4000);

	rc = FUNC12(tegra_host->rst);
	if (rc)
		goto err_rst_get;

	FUNC20(2000, 4000);

	rc = FUNC17(host);
	if (rc)
		goto err_add_host;

	return 0;

err_add_host:
	FUNC11(tegra_host->rst);
err_rst_get:
	FUNC2(pltfm_host->clk);
err_clk_get:
err_power_req:
err_parse_dt:
	FUNC13(pdev);
	return rc;
}