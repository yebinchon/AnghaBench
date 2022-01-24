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

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdhci_host*) ; 
 int FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 struct sdhci_host* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  sdhci_dove_pdata ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 struct sdhci_host* FUNC8 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sdhci_pltfm_host* FUNC9 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct sdhci_host *host;
	struct sdhci_pltfm_host *pltfm_host;
	int ret;

	host = FUNC8(pdev, &sdhci_dove_pdata, 0);
	if (FUNC0(host))
		return FUNC1(host);

	pltfm_host = FUNC9(host);
	pltfm_host->clk = FUNC4(&pdev->dev, NULL);

	if (!FUNC0(pltfm_host->clk))
		FUNC3(pltfm_host->clk);

	ret = FUNC5(host->mmc);
	if (ret)
		goto err_sdhci_add;

	ret = FUNC6(host);
	if (ret)
		goto err_sdhci_add;

	return 0;

err_sdhci_add:
	FUNC2(pltfm_host->clk);
	FUNC7(pdev);
	return ret;
}