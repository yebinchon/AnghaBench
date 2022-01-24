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
struct sdhci_host {int ier; int /*<<< orphan*/  irq; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int AC12_V1V8_SIGEN ; 
 int CON_CLKEXTFREE ; 
 int CON_PADEN ; 
 int PSTATE_DATI ; 
 int PSTATE_DLEV_DAT0 ; 
 int SDHCI_INT_CARD_INT ; 
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_OMAP_AC12 ; 
 int /*<<< orphan*/  SDHCI_OMAP_CON ; 
 int /*<<< orphan*/  SDHCI_OMAP_PSTATE ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 
 struct sdhci_omap_host* FUNC5 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct mmc_host *mmc)
{
	u32 reg, ac12;
	int ret = false;
	struct sdhci_host *host = FUNC2(mmc);
	struct sdhci_pltfm_host *pltfm_host;
	struct sdhci_omap_host *omap_host;
	u32 ier = host->ier;

	pltfm_host = FUNC6(host);
	omap_host = FUNC5(pltfm_host);

	reg = FUNC3(omap_host, SDHCI_OMAP_CON);
	ac12 = FUNC3(omap_host, SDHCI_OMAP_AC12);
	reg &= ~CON_CLKEXTFREE;
	if (ac12 & AC12_V1V8_SIGEN)
		reg |= CON_CLKEXTFREE;
	reg |= CON_PADEN;
	FUNC4(omap_host, SDHCI_OMAP_CON, reg);

	FUNC0(host->irq);
	ier |= SDHCI_INT_CARD_INT;
	FUNC7(host, ier, SDHCI_INT_ENABLE);
	FUNC7(host, ier, SDHCI_SIGNAL_ENABLE);

	/*
	 * Delay is required for PSTATE to correctly reflect
	 * DLEV/CLEV values after PADEN is set.
	 */
	FUNC8(50, 100);
	reg = FUNC3(omap_host, SDHCI_OMAP_PSTATE);
	if ((reg & PSTATE_DATI) || !(reg & PSTATE_DLEV_DAT0))
		ret = true;

	reg = FUNC3(omap_host, SDHCI_OMAP_CON);
	reg &= ~(CON_CLKEXTFREE | CON_PADEN);
	FUNC4(omap_host, SDHCI_OMAP_CON, reg);

	FUNC7(host, host->ier, SDHCI_INT_ENABLE);
	FUNC7(host, host->ier, SDHCI_SIGNAL_ENABLE);
	FUNC1(host->irq);

	return ret;
}