#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_variant_info {struct sdhci_msm_offset* offset; int /*<<< orphan*/  var_ops; int /*<<< orphan*/  restore_dll_config; int /*<<< orphan*/  mci_removed; } ;
struct sdhci_msm_offset {int /*<<< orphan*/  core_pwrctl_mask; scalar_t__ core_vendor_spec_capabilities0; int /*<<< orphan*/  core_mci_version; int /*<<< orphan*/  core_hc_mode; scalar_t__ core_vendor_spec; } ;
struct sdhci_msm_host {int use_14lpp_dll_reset; int use_cdclp533; int pwr_irq; struct sdhci_host* bus_clk; TYPE_2__* bulk_clks; int /*<<< orphan*/  mci_removed; struct sdhci_host* core_mem; struct sdhci_host* xo_clk; int /*<<< orphan*/  saved_tuning_phase; struct sdhci_msm_offset* offset; int /*<<< orphan*/  var_ops; int /*<<< orphan*/  restore_dll_config; struct platform_device* pdev; int /*<<< orphan*/  mmc; } ;
struct TYPE_5__ {int /*<<< orphan*/  execute_tuning; } ;
struct sdhci_host {TYPE_1__ mmc_host_ops; scalar_t__ ioaddr; int /*<<< orphan*/  mmc; scalar_t__ sdma_boundary; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {TYPE_1__ mmc_host_ops; scalar_t__ ioaddr; int /*<<< orphan*/  mmc; scalar_t__ sdma_boundary; } ;
struct TYPE_6__ {struct sdhci_host* clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int CORE_VENDOR_SPEC_POR_VAL ; 
 int CORE_VERSION_MAJOR_MASK ; 
 int CORE_VERSION_MAJOR_SHIFT ; 
 int CORE_VERSION_MINOR_MASK ; 
 int FF_CLK_SW_RST_DIS ; 
 int HC_MODE_EN ; 
 int INT_MASK ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  INVALID_TUNING_PHASE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  MSM_MMC_AUTOSUSPEND_DELAY_MS ; 
 int FUNC2 (struct sdhci_host*) ; 
 int SDHCI_CAN_DO_8BIT ; 
 int SDHCI_CAN_VDD_300 ; 
 scalar_t__ SDHCI_CAPABILITIES ; 
 scalar_t__ SDHCI_HOST_VERSION ; 
 int SDHCI_VENDOR_VER_MASK ; 
 int SDHCI_VENDOR_VER_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*) ; 
 int FUNC6 (struct sdhci_host*) ; 
 int FUNC7 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 struct sdhci_host* FUNC13 (int /*<<< orphan*/ *,struct resource*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct sdhci_msm_host*,struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sdhci_msm_host*,int,struct sdhci_host*,int /*<<< orphan*/ ) ; 
 struct sdhci_msm_variant_info* FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (struct platform_device*,char*) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int FUNC32 (scalar_t__) ; 
 int FUNC33 (scalar_t__) ; 
 int FUNC34 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC35 (struct platform_device*) ; 
 int /*<<< orphan*/  sdhci_msm_execute_tuning ; 
 int /*<<< orphan*/  FUNC36 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct sdhci_msm_host*) ; 
 int /*<<< orphan*/  sdhci_msm_pdata ; 
 int /*<<< orphan*/  sdhci_msm_pwr_irq ; 
 int /*<<< orphan*/  FUNC38 (struct sdhci_msm_host*) ; 
 int /*<<< orphan*/  FUNC39 (struct platform_device*) ; 
 struct sdhci_host* FUNC40 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct sdhci_msm_host* FUNC41 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC42 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC43 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC44(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_msm_host *msm_host;
	struct resource *core_memres;
	struct clk *clk;
	int ret;
	u16 host_version, core_minor;
	u32 core_version, config;
	u8 core_major;
	const struct sdhci_msm_offset *msm_offset;
	const struct sdhci_msm_variant_info *var_info;

	host = FUNC40(pdev, &sdhci_msm_pdata, sizeof(*msm_host));
	if (FUNC1(host))
		return FUNC2(host);

	host->sdma_boundary = 0;
	pltfm_host = FUNC42(host);
	msm_host = FUNC41(pltfm_host);
	msm_host->mmc = host->mmc;
	msm_host->pdev = pdev;

	ret = FUNC16(host->mmc);
	if (ret)
		goto pltfm_free;

	/*
	 * Based on the compatible string, load the required msm host info from
	 * the data associated with the version info.
	 */
	var_info = FUNC19(&pdev->dev);

	msm_host->mci_removed = var_info->mci_removed;
	msm_host->restore_dll_config = var_info->restore_dll_config;
	msm_host->var_ops = var_info->var_ops;
	msm_host->offset = var_info->offset;

	msm_offset = msm_host->offset;

	FUNC35(pdev);

	msm_host->saved_tuning_phase = INVALID_TUNING_PHASE;

	/* Setup SDCC bus voter clock. */
	msm_host->bus_clk = FUNC12(&pdev->dev, "bus");
	if (!FUNC1(msm_host->bus_clk)) {
		/* Vote for max. clk rate for max. performance */
		ret = FUNC7(msm_host->bus_clk, INT_MAX);
		if (ret)
			goto pltfm_free;
		ret = FUNC6(msm_host->bus_clk);
		if (ret)
			goto pltfm_free;
	}

	/* Setup main peripheral bus clock */
	clk = FUNC12(&pdev->dev, "iface");
	if (FUNC1(clk)) {
		ret = FUNC2(clk);
		FUNC9(&pdev->dev, "Peripheral clk setup failed (%d)\n", ret);
		goto bus_clk_disable;
	}
	msm_host->bulk_clks[1].clk = clk;

	/* Setup SDC MMC clock */
	clk = FUNC12(&pdev->dev, "core");
	if (FUNC1(clk)) {
		ret = FUNC2(clk);
		FUNC9(&pdev->dev, "SDC MMC clk setup failed (%d)\n", ret);
		goto bus_clk_disable;
	}
	msm_host->bulk_clks[0].clk = clk;

	/* Vote for maximum clock rate for maximum performance */
	ret = FUNC7(clk, INT_MAX);
	if (ret)
		FUNC11(&pdev->dev, "core clock boost failed\n");

	clk = FUNC12(&pdev->dev, "cal");
	if (FUNC1(clk))
		clk = NULL;
	msm_host->bulk_clks[2].clk = clk;

	clk = FUNC12(&pdev->dev, "sleep");
	if (FUNC1(clk))
		clk = NULL;
	msm_host->bulk_clks[3].clk = clk;

	ret = FUNC4(FUNC0(msm_host->bulk_clks),
				      msm_host->bulk_clks);
	if (ret)
		goto bus_clk_disable;

	/*
	 * xo clock is needed for FLL feature of cm_dll.
	 * In case if xo clock is not mentioned in DT, warn and proceed.
	 */
	msm_host->xo_clk = FUNC12(&pdev->dev, "xo");
	if (FUNC1(msm_host->xo_clk)) {
		ret = FUNC2(msm_host->xo_clk);
		FUNC11(&pdev->dev, "TCXO clk not present (%d)\n", ret);
	}

	if (!msm_host->mci_removed) {
		core_memres = FUNC21(pdev, IORESOURCE_MEM, 1);
		msm_host->core_mem = FUNC13(&pdev->dev,
				core_memres);

		if (FUNC1(msm_host->core_mem)) {
			ret = FUNC2(msm_host->core_mem);
			goto clk_disable;
		}
	}

	/* Reset the vendor spec register to power on reset state */
	FUNC43(CORE_VENDOR_SPEC_POR_VAL,
			host->ioaddr + msm_offset->core_vendor_spec);

	if (!msm_host->mci_removed) {
		/* Set HC_MODE_EN bit in HC_MODE register */
		FUNC18(msm_host, HC_MODE_EN, host,
				msm_offset->core_hc_mode);
		config = FUNC17(msm_host, host,
				msm_offset->core_hc_mode);
		config |= FF_CLK_SW_RST_DIS;
		FUNC18(msm_host, config, host,
				msm_offset->core_hc_mode);
	}

	host_version = FUNC33((host->ioaddr + SDHCI_HOST_VERSION));
	FUNC8(&pdev->dev, "Host Version: 0x%x Vendor Version 0x%x\n",
		host_version, ((host_version & SDHCI_VENDOR_VER_MASK) >>
			       SDHCI_VENDOR_VER_SHIFT));

	core_version = FUNC17(msm_host, host,
			msm_offset->core_mci_version);
	core_major = (core_version & CORE_VERSION_MAJOR_MASK) >>
		      CORE_VERSION_MAJOR_SHIFT;
	core_minor = core_version & CORE_VERSION_MINOR_MASK;
	FUNC8(&pdev->dev, "MCI Version: 0x%08x, major: 0x%04x, minor: 0x%02x\n",
		core_version, core_major, core_minor);

	if (core_major == 1 && core_minor >= 0x42)
		msm_host->use_14lpp_dll_reset = true;

	/*
	 * SDCC 5 controller with major version 1, minor version 0x34 and later
	 * with HS 400 mode support will use CM DLL instead of CDC LP 533 DLL.
	 */
	if (core_major == 1 && core_minor < 0x34)
		msm_host->use_cdclp533 = true;

	/*
	 * Support for some capabilities is not advertised by newer
	 * controller versions and must be explicitly enabled.
	 */
	if (core_major >= 1 && core_minor != 0x11 && core_minor != 0x12) {
		config = FUNC32(host->ioaddr + SDHCI_CAPABILITIES);
		config |= SDHCI_CAN_VDD_300 | SDHCI_CAN_DO_8BIT;
		FUNC43(config, host->ioaddr +
				msm_offset->core_vendor_spec_capabilities0);
	}

	/*
	 * Power on reset state may trigger power irq if previous status of
	 * PWRCTL was either BUS_ON or IO_HIGH_V. So before enabling pwr irq
	 * interrupt in GIC, any pending power irq interrupt should be
	 * acknowledged. Otherwise power irq interrupt handler would be
	 * fired prematurely.
	 */
	FUNC36(host, 0);

	/*
	 * Ensure that above writes are propogated before interrupt enablement
	 * in GIC.
	 */
	FUNC15();

	/* Setup IRQ for handling power/voltage tasks with PMIC */
	msm_host->pwr_irq = FUNC20(pdev, "pwr_irq");
	if (msm_host->pwr_irq < 0) {
		ret = msm_host->pwr_irq;
		goto clk_disable;
	}

	FUNC37(msm_host);
	/* Enable pwr irq interrupts */
	FUNC18(msm_host, INT_MASK, host,
		msm_offset->core_pwrctl_mask);

	ret = FUNC14(&pdev->dev, msm_host->pwr_irq, NULL,
					sdhci_msm_pwr_irq, IRQF_ONESHOT,
					FUNC10(&pdev->dev), host);
	if (ret) {
		FUNC9(&pdev->dev, "Request IRQ failed (%d)\n", ret);
		goto clk_disable;
	}

	FUNC24(&pdev->dev);
	FUNC28(&pdev->dev);
	FUNC23(&pdev->dev);
	FUNC29(&pdev->dev,
					 MSM_MMC_AUTOSUSPEND_DELAY_MS);
	FUNC31(&pdev->dev);

	host->mmc_host_ops.execute_tuning = sdhci_msm_execute_tuning;
	ret = FUNC34(host);
	if (ret)
		goto pm_runtime_disable;
	FUNC38(msm_host);

	FUNC25(&pdev->dev);
	FUNC26(&pdev->dev);

	return 0;

pm_runtime_disable:
	FUNC22(&pdev->dev);
	FUNC30(&pdev->dev);
	FUNC27(&pdev->dev);
clk_disable:
	FUNC3(FUNC0(msm_host->bulk_clks),
				   msm_host->bulk_clks);
bus_clk_disable:
	if (!FUNC1(msm_host->bus_clk))
		FUNC5(msm_host->bus_clk);
pltfm_free:
	FUNC39(pdev);
	return ret;
}