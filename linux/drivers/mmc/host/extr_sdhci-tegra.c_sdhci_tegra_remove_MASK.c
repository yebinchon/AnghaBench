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
struct sdhci_tegra {int /*<<< orphan*/  rst; } ;
struct sdhci_pltfm_host {int /*<<< orphan*/  clk; } ;
struct sdhci_host {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 struct sdhci_tegra* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_tegra *tegra_host = FUNC4(pltfm_host);

	FUNC6(host, 0);

	FUNC2(tegra_host->rst);
	FUNC7(2000, 4000);
	FUNC0(pltfm_host->clk);

	FUNC3(pdev);

	return 0;
}