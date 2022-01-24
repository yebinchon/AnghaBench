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
typedef  int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int CON_CLKEXTFREE ; 
 int CON_CTPL ; 
 int /*<<< orphan*/  SDHCI_OMAP_CON ; 
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*,int) ; 
 int FUNC2 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 
 struct sdhci_omap_host* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, int enable)
{
	struct sdhci_host *host = FUNC0(mmc);
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_omap_host *omap_host = FUNC4(pltfm_host);
	u32 reg;

	reg = FUNC2(omap_host, SDHCI_OMAP_CON);
	if (enable)
		reg |= (CON_CTPL | CON_CLKEXTFREE);
	else
		reg &= ~(CON_CTPL | CON_CLKEXTFREE);
	FUNC3(omap_host, SDHCI_OMAP_CON, reg);

	FUNC1(mmc, enable);
}