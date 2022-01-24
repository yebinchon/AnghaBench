#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct sdhci_sprd_host {int version; struct sdhci_host* clk_sdio; struct sdhci_host* clk_enable; struct sdhci_host* clk_2x_enable; int /*<<< orphan*/  flags; scalar_t__ base_rate; struct sdhci_host* pins_default; struct sdhci_host* pinctrl; struct sdhci_host* pins_uhs; } ;
struct TYPE_17__ {int /*<<< orphan*/  start_signal_voltage_switch; int /*<<< orphan*/  hs400_enhanced_strobe; int /*<<< orphan*/  request; } ;
struct sdhci_host {int version; int caps1; int /*<<< orphan*/  flags; void* caps; TYPE_13__* mmc; TYPE_1__ mmc_host_ops; int /*<<< orphan*/  dma_mask; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * dma_mask; } ;
struct platform_device {TYPE_2__ dev; } ;
struct clk {int version; int caps1; int /*<<< orphan*/  flags; void* caps; TYPE_13__* mmc; TYPE_1__ mmc_host_ops; int /*<<< orphan*/  dma_mask; } ;
struct TYPE_16__ {int caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sdhci_host*) ; 
 int MMC_CAP_CMD23 ; 
 int MMC_CAP_ERASE ; 
 int MMC_CAP_MMC_HIGHSPEED ; 
 int MMC_CAP_SD_HIGHSPEED ; 
 int FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  SDHCI_CAPABILITIES ; 
 int /*<<< orphan*/  SDHCI_CAPABILITIES_1 ; 
 int /*<<< orphan*/  SDHCI_HOST_VERSION ; 
 scalar_t__ SDHCI_SPRD_CLK_DEF_RATE ; 
 int SDHCI_SUPPORT_DDR50 ; 
 int SDHCI_SUPPORT_SDR104 ; 
 int SDHCI_SUPPORT_SDR50 ; 
 int SDHCI_VENDOR_VER_MASK ; 
 int SDHCI_VENDOR_VER_SHIFT ; 
 struct sdhci_sprd_host* FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 scalar_t__ FUNC6 (struct sdhci_host*) ; 
 int FUNC7 (struct sdhci_host*) ; 
 struct sdhci_host* FUNC8 (TYPE_2__*,char*) ; 
 struct sdhci_host* FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_13__*) ; 
 void* FUNC11 (struct sdhci_host*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC24 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*) ; 
 struct sdhci_host* FUNC26 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 void* FUNC27 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC29 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_sprd_hs400_enhanced_strobe ; 
 int /*<<< orphan*/  FUNC30 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_sprd_pdata ; 
 int /*<<< orphan*/  FUNC31 (struct sdhci_sprd_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdhci_sprd_request ; 
 int /*<<< orphan*/  sdhci_sprd_voltage_switch ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct sdhci_sprd_host *sprd_host;
	struct clk *clk;
	int ret = 0;

	host = FUNC26(pdev, &sdhci_sprd_pdata, sizeof(*sprd_host));
	if (FUNC1(host))
		return FUNC2(host);

	host->dma_mask = FUNC0(64);
	pdev->dev.dma_mask = &host->dma_mask;
	host->mmc_host_ops.request = sdhci_sprd_request;
	host->mmc_host_ops.hs400_enhanced_strobe =
		sdhci_sprd_hs400_enhanced_strobe;
	/*
	 * We can not use the standard ops to change and detect the voltage
	 * signal for Spreadtrum SD host controller, since our voltage regulator
	 * for I/O is fixed in hardware, that means we do not need control
	 * the standard SD host controller to change the I/O voltage.
	 */
	host->mmc_host_ops.start_signal_voltage_switch =
		sdhci_sprd_voltage_switch;

	host->mmc->caps = MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED |
		MMC_CAP_ERASE | MMC_CAP_CMD23;
	ret = FUNC10(host->mmc);
	if (ret)
		goto pltfm_free;

	sprd_host = FUNC3(host);
	FUNC31(sprd_host, pdev->dev.of_node);

	sprd_host->pinctrl = FUNC9(&pdev->dev);
	if (!FUNC1(sprd_host->pinctrl)) {
		sprd_host->pins_uhs =
			FUNC11(sprd_host->pinctrl, "state_uhs");
		if (FUNC1(sprd_host->pins_uhs)) {
			ret = FUNC2(sprd_host->pins_uhs);
			goto pltfm_free;
		}

		sprd_host->pins_default =
			FUNC11(sprd_host->pinctrl, "default");
		if (FUNC1(sprd_host->pins_default)) {
			ret = FUNC2(sprd_host->pins_default);
			goto pltfm_free;
		}
	}

	clk = FUNC8(&pdev->dev, "sdio");
	if (FUNC1(clk)) {
		ret = FUNC2(clk);
		goto pltfm_free;
	}
	sprd_host->clk_sdio = clk;
	sprd_host->base_rate = FUNC6(sprd_host->clk_sdio);
	if (!sprd_host->base_rate)
		sprd_host->base_rate = SDHCI_SPRD_CLK_DEF_RATE;

	clk = FUNC8(&pdev->dev, "enable");
	if (FUNC1(clk)) {
		ret = FUNC2(clk);
		goto pltfm_free;
	}
	sprd_host->clk_enable = clk;

	clk = FUNC8(&pdev->dev, "2x_enable");
	if (!FUNC1(clk))
		sprd_host->clk_2x_enable = clk;

	ret = FUNC7(sprd_host->clk_sdio);
	if (ret)
		goto pltfm_free;

	ret = FUNC7(sprd_host->clk_enable);
	if (ret)
		goto clk_disable;

	ret = FUNC7(sprd_host->clk_2x_enable);
	if (ret)
		goto clk_disable2;

	FUNC30(host);
	host->version = FUNC28(host, SDHCI_HOST_VERSION);
	sprd_host->version = ((host->version & SDHCI_VENDOR_VER_MASK) >>
			       SDHCI_VENDOR_VER_SHIFT);

	FUNC14(&pdev->dev);
	FUNC18(&pdev->dev);
	FUNC13(&pdev->dev);
	FUNC19(&pdev->dev, 50);
	FUNC21(&pdev->dev);
	FUNC22(&pdev->dev, 1);

	FUNC24(host);

	/*
	 * Supply the existing CAPS, but clear the UHS-I modes. This
	 * will allow these modes to be specified only by device
	 * tree properties through mmc_of_parse().
	 */
	host->caps = FUNC27(host, SDHCI_CAPABILITIES);
	host->caps1 = FUNC27(host, SDHCI_CAPABILITIES_1);
	host->caps1 &= ~(SDHCI_SUPPORT_SDR50 | SDHCI_SUPPORT_SDR104 |
			 SDHCI_SUPPORT_DDR50);

	ret = FUNC29(host);
	if (ret)
		goto pm_runtime_disable;

	sprd_host->flags = host->flags;

	ret = FUNC4(host);
	if (ret)
		goto err_cleanup_host;

	FUNC15(&pdev->dev);
	FUNC16(&pdev->dev);

	return 0;

err_cleanup_host:
	FUNC23(host);

pm_runtime_disable:
	FUNC17(&pdev->dev);
	FUNC12(&pdev->dev);
	FUNC20(&pdev->dev);

	FUNC5(sprd_host->clk_2x_enable);

clk_disable2:
	FUNC5(sprd_host->clk_enable);

clk_disable:
	FUNC5(sprd_host->clk_sdio);

pltfm_free:
	FUNC25(pdev);
	return ret;
}