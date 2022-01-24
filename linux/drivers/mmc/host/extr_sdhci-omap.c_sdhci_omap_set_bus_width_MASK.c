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
 int /*<<< orphan*/  CON_DW8 ; 
 int MMC_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  SDHCI_OMAP_CON ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sdhci_omap_host* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, int width)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct sdhci_omap_host *omap_host = FUNC2(pltfm_host);
	u32 reg;

	reg = FUNC0(omap_host, SDHCI_OMAP_CON);
	if (width == MMC_BUS_WIDTH_8)
		reg |= CON_DW8;
	else
		reg &= ~CON_DW8;
	FUNC1(omap_host, SDHCI_OMAP_CON, reg);

	FUNC4(host, width);
}