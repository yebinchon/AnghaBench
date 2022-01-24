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
struct st_mmc_platform_data {int /*<<< orphan*/  top_ioaddr; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; int /*<<< orphan*/  ioaddr; } ;

/* Variables and functions */
 scalar_t__ CLK_TO_CHECK_DLL_LOCK ; 
 struct st_mmc_platform_data* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sdhci_host *host)
{
	int ret = 0;
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct st_mmc_platform_data *pdata = FUNC0(pltfm_host);

	if (host->clock > CLK_TO_CHECK_DLL_LOCK) {
		FUNC3(pdata->top_ioaddr);
		ret = FUNC2(host->ioaddr);
	}

	return ret;
}