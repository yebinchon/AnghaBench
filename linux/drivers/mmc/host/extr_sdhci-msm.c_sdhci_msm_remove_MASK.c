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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  bulk_clks; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SDHCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 struct sdhci_msm_host* FUNC10 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC11 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC4(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC11(host);
	struct sdhci_msm_host *msm_host = FUNC10(pltfm_host);
	int dead = (FUNC8(host->ioaddr + SDHCI_INT_STATUS) ==
		    0xffffffff);

	FUNC12(host, dead);

	FUNC6(&pdev->dev);
	FUNC5(&pdev->dev);
	FUNC7(&pdev->dev);

	FUNC2(FUNC0(msm_host->bulk_clks),
				   msm_host->bulk_clks);
	if (!FUNC1(msm_host->bus_clk))
		FUNC3(msm_host->bus_clk);
	FUNC9(pdev);
	return 0;
}