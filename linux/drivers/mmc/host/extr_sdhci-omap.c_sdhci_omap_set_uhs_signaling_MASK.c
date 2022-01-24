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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_DDR ; 
 unsigned int MMC_TIMING_MMC_DDR52 ; 
 unsigned int MMC_TIMING_UHS_DDR50 ; 
 int /*<<< orphan*/  SDHCI_OMAP_CON ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_omap_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_omap_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdhci_omap_host* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host,
					 unsigned int timing)
{
	u32 reg;
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_omap_host *omap_host = FUNC4(pltfm_host);

	FUNC2(omap_host);

	reg = FUNC0(omap_host, SDHCI_OMAP_CON);
	if (timing == MMC_TIMING_UHS_DDR50 || timing == MMC_TIMING_MMC_DDR52)
		reg |= CON_DDR;
	else
		reg &= ~CON_DDR;
	FUNC3(omap_host, SDHCI_OMAP_CON, reg);

	FUNC6(host, timing);
	FUNC1(omap_host);
}