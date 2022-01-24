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
struct sdhci_tegra {int /*<<< orphan*/  last_calib; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_request {int dummy; } ;
struct mmc_host {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 
 struct sdhci_tegra* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct sdhci_host *host = FUNC3(mmc);
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_tegra *tegra_host = FUNC4(pltfm_host);
	ktime_t since_calib = FUNC1(FUNC0(), tegra_host->last_calib);

	/* 100 ms calibration interval is specified in the TRM */
	if (FUNC2(since_calib) > 100) {
		FUNC7(host);
		tegra_host->last_calib = FUNC0();
	}

	FUNC6(mmc, mrq);
}