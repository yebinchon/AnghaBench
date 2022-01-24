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
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int /*<<< orphan*/  power_mode; int /*<<< orphan*/  timing; int /*<<< orphan*/  bus_mode; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 struct sdhci_omap_host* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_ios*) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC0(mmc);
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_omap_host *omap_host;

	pltfm_host = FUNC5(host);
	omap_host = FUNC4(pltfm_host);

	FUNC1(omap_host, ios->bus_mode);
	FUNC3(omap_host, ios->timing);
	FUNC6(mmc, ios);
	FUNC2(omap_host, ios->power_mode);
}