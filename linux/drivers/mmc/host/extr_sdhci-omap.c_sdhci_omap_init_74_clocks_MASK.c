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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_omap_host {scalar_t__ power_mode; } ;
struct sdhci_host {int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CON_INIT ; 
 int INT_CC_EN ; 
 scalar_t__ MMC_POWER_ON ; 
 int /*<<< orphan*/  SDHCI_OMAP_CMD ; 
 int /*<<< orphan*/  SDHCI_OMAP_CON ; 
 int /*<<< orphan*/  SDHCI_OMAP_STAT ; 
 int /*<<< orphan*/  SDHCI_OMAP_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int) ; 
 struct sdhci_omap_host* FUNC8 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC9 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct sdhci_host *host, u8 power_mode)
{
	u32 reg;
	ktime_t timeout;
	struct sdhci_pltfm_host *pltfm_host = FUNC9(host);
	struct sdhci_omap_host *omap_host = FUNC8(pltfm_host);

	if (omap_host->power_mode == power_mode)
		return;

	if (power_mode != MMC_POWER_ON)
		return;

	FUNC1(host->irq);

	reg = FUNC6(omap_host, SDHCI_OMAP_CON);
	reg |= CON_INIT;
	FUNC7(omap_host, SDHCI_OMAP_CON, reg);
	FUNC7(omap_host, SDHCI_OMAP_CMD, 0x0);

	/* wait 1ms */
	timeout = FUNC3(FUNC5(), SDHCI_OMAP_TIMEOUT);
	while (1) {
		bool timedout = FUNC4(FUNC5(), timeout);

		if (FUNC6(omap_host, SDHCI_OMAP_STAT) & INT_CC_EN)
			break;
		if (FUNC0(timedout))
			return;
		FUNC10(5, 10);
	}

	reg = FUNC6(omap_host, SDHCI_OMAP_CON);
	reg &= ~CON_INIT;
	FUNC7(omap_host, SDHCI_OMAP_CON, reg);
	FUNC7(omap_host, SDHCI_OMAP_STAT, INT_CC_EN);

	FUNC2(host->irq);
}