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
struct sdhci_sprd_host {int /*<<< orphan*/  clk_2x_enable; int /*<<< orphan*/  clk_enable; int /*<<< orphan*/  clk_sdio; } ;
struct sdhci_host {struct mmc_host* mmc; } ;
struct platform_device {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 struct sdhci_sprd_host* FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 struct sdhci_host* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC4(pdev);
	struct sdhci_sprd_host *sprd_host = FUNC0(host);
	struct mmc_host *mmc = host->mmc;

	FUNC3(mmc);
	FUNC1(sprd_host->clk_sdio);
	FUNC1(sprd_host->clk_enable);
	FUNC1(sprd_host->clk_2x_enable);

	FUNC2(mmc);

	return 0;
}