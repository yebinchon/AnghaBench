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
struct sdhci_pltfm_host {struct sdhci_host* clk; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct sdhci_host* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 struct sdhci_host* FUNC11 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sdhci_pltfm_host* FUNC12 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdhci_sirf_pdata ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct sdhci_pltfm_host *pltfm_host;
	struct clk *clk;
	int ret;

	clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(clk)) {
		FUNC4(&pdev->dev, "unable to get clock");
		return FUNC1(clk);
	}

	host = FUNC11(pdev, &sdhci_sirf_pdata, 0);
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC12(host);
	pltfm_host->clk = clk;

	FUNC9(pdev);

	ret = FUNC3(pltfm_host->clk);
	if (ret)
		goto err_clk_prepare;

	ret = FUNC8(host);
	if (ret)
		goto err_sdhci_add;

	/*
	 * We must request the IRQ after sdhci_add_host(), as the tasklet only
	 * gets setup in sdhci_add_host() and we oops.
	 */
	ret = FUNC6(host->mmc, "cd", 0, false, 0, NULL);
	if (ret == -EPROBE_DEFER)
		goto err_request_cd;
	if (!ret)
		FUNC7(host->mmc);

	return 0;

err_request_cd:
	FUNC13(host, 0);
err_sdhci_add:
	FUNC2(pltfm_host->clk);
err_clk_prepare:
	FUNC10(pdev);
	return ret;
}