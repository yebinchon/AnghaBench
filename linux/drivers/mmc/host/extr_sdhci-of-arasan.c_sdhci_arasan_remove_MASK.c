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
struct sdhci_host {int dummy; } ;
struct sdhci_arasan_data {int /*<<< orphan*/  phy; scalar_t__ is_phy_on; struct clk* clk_ahb; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sdhci_arasan_data* FUNC6 (struct sdhci_pltfm_host*) ; 
 int FUNC7 (struct platform_device*) ; 
 struct sdhci_pltfm_host* FUNC8 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret;
	struct sdhci_host *host = FUNC4(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC8(host);
	struct sdhci_arasan_data *sdhci_arasan = FUNC6(pltfm_host);
	struct clk *clk_ahb = sdhci_arasan->clk_ahb;

	if (!FUNC0(sdhci_arasan->phy)) {
		if (sdhci_arasan->is_phy_on)
			FUNC3(sdhci_arasan->phy);
		FUNC2(sdhci_arasan->phy);
	}

	FUNC5(&pdev->dev);

	ret = FUNC7(pdev);

	FUNC1(clk_ahb);

	return ret;
}