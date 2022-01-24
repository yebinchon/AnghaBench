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
struct st_mmc_platform_data {int /*<<< orphan*/  icnclk; struct reset_control* rstc; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct reset_control {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct reset_control*) ; 
 struct st_mmc_platform_data* FUNC3 (struct sdhci_pltfm_host*) ; 
 int FUNC4 (struct platform_device*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC1(pdev);
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct st_mmc_platform_data *pdata = FUNC3(pltfm_host);
	struct reset_control *rstc = pdata->rstc;
	int ret;

	ret = FUNC4(pdev);

	FUNC0(pdata->icnclk);

	if (rstc)
		FUNC2(rstc);

	return ret;
}