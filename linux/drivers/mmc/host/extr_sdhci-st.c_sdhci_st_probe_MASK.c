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
typedef  int u16 ;
struct st_mmc_platform_data {struct sdhci_host* icnclk; struct sdhci_host* top_ioaddr; struct sdhci_host* rstc; } ;
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {scalar_t__ ioaddr; int /*<<< orphan*/  mmc; } ;
struct resource {int dummy; } ;
struct reset_control {scalar_t__ ioaddr; int /*<<< orphan*/  mmc; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct clk {scalar_t__ ioaddr; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 scalar_t__ SDHCI_HOST_VERSION ; 
 int SDHCI_SPEC_VER_MASK ; 
 int SDHCI_SPEC_VER_SHIFT ; 
 int SDHCI_VENDOR_VER_MASK ; 
 int SDHCI_VENDOR_VER_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 struct sdhci_host* FUNC7 (TYPE_1__*,char*) ; 
 struct sdhci_host* FUNC8 (TYPE_1__*,struct resource*) ; 
 struct sdhci_host* FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*) ; 
 int FUNC15 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*) ; 
 struct sdhci_host* FUNC17 (struct platform_device*,int /*<<< orphan*/ *,int) ; 
 struct st_mmc_platform_data* FUNC18 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC19 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_st_pdata ; 
 int /*<<< orphan*/  FUNC20 (struct device_node*,struct sdhci_host*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct sdhci_host *host;
	struct st_mmc_platform_data *pdata;
	struct sdhci_pltfm_host *pltfm_host;
	struct clk *clk, *icnclk;
	int ret = 0;
	u16 host_version;
	struct resource *res;
	struct reset_control *rstc;

	clk =  FUNC7(&pdev->dev, "mmc");
	if (FUNC0(clk)) {
		FUNC4(&pdev->dev, "Peripheral clk not found\n");
		return FUNC1(clk);
	}

	/* ICN clock isn't compulsory, but use it if it's provided. */
	icnclk = FUNC7(&pdev->dev, "icn");
	if (FUNC0(icnclk))
		icnclk = NULL;

	rstc = FUNC9(&pdev->dev, NULL);
	if (FUNC0(rstc))
		rstc = NULL;
	else
		FUNC14(rstc);

	host = FUNC17(pdev, &sdhci_st_pdata, sizeof(*pdata));
	if (FUNC0(host)) {
		FUNC4(&pdev->dev, "Failed sdhci_pltfm_init\n");
		ret = FUNC1(host);
		goto err_pltfm_init;
	}

	pltfm_host = FUNC19(host);
	pdata = FUNC18(pltfm_host);
	pdata->rstc = rstc;

	ret = FUNC10(host->mmc);
	if (ret) {
		FUNC4(&pdev->dev, "Failed mmc_of_parse\n");
		goto err_of;
	}

	ret = FUNC3(clk);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to prepare clock\n");
		goto err_of;
	}

	ret = FUNC3(icnclk);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to prepare icn clock\n");
		goto err_icnclk;
	}

	/* Configure the FlashSS Top registers for setting eMMC TX/RX delay */
	res = FUNC11(pdev, IORESOURCE_MEM,
					   "top-mmc-delay");
	pdata->top_ioaddr = FUNC8(&pdev->dev, res);
	if (FUNC0(pdata->top_ioaddr)) {
		FUNC6(&pdev->dev, "FlashSS Top Dly registers not available");
		pdata->top_ioaddr = NULL;
	}

	pltfm_host->clk = clk;
	pdata->icnclk = icnclk;

	/* Configure the Arasan HC inside the flashSS */
	FUNC20(np, host);

	ret = FUNC15(host);
	if (ret)
		goto err_out;

	host_version = FUNC12((host->ioaddr + SDHCI_HOST_VERSION));

	FUNC5(&pdev->dev, "SDHCI ST Initialised: Host Version: 0x%x Vendor Version 0x%x\n",
		((host_version & SDHCI_SPEC_VER_MASK) >> SDHCI_SPEC_VER_SHIFT),
		((host_version & SDHCI_VENDOR_VER_MASK) >>
		SDHCI_VENDOR_VER_SHIFT));

	return 0;

err_out:
	FUNC2(icnclk);
err_icnclk:
	FUNC2(clk);
err_of:
	FUNC16(pdev);
err_pltfm_init:
	if (rstc)
		FUNC13(rstc);

	return ret;
}