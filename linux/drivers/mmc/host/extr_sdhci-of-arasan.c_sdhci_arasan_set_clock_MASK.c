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
struct sdhci_host {unsigned int max_clk; } ;
struct sdhci_arasan_data {int is_phy_on; int quirks; int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PHY_CLK_TOO_SLOW_HZ ; 
 int SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sdhci_arasan_data* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host, unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_arasan_data *sdhci_arasan = FUNC4(pltfm_host);
	bool ctrl_phy = false;

	if (!FUNC0(sdhci_arasan->phy)) {
		if (!sdhci_arasan->is_phy_on && clock <= PHY_CLK_TOO_SLOW_HZ) {
			/*
			 * If PHY off, set clock to max speed and power PHY on.
			 *
			 * Although PHY docs apparently suggest power cycling
			 * when changing the clock the PHY doesn't like to be
			 * powered on while at low speeds like those used in ID
			 * mode.  Even worse is powering the PHY on while the
			 * clock is off.
			 *
			 * To workaround the PHY limitations, the best we can
			 * do is to power it on at a faster speed and then slam
			 * through low speeds without power cycling.
			 */
			FUNC6(host, host->max_clk);
			FUNC3(sdhci_arasan->phy);
			sdhci_arasan->is_phy_on = true;

			/*
			 * We'll now fall through to the below case with
			 * ctrl_phy = false (so we won't turn off/on).  The
			 * sdhci_set_clock() will set the real clock.
			 */
		} else if (clock > PHY_CLK_TOO_SLOW_HZ) {
			/*
			 * At higher clock speeds the PHY is fine being power
			 * cycled and docs say you _should_ power cycle when
			 * changing clock speeds.
			 */
			ctrl_phy = true;
		}
	}

	if (ctrl_phy && sdhci_arasan->is_phy_on) {
		FUNC2(sdhci_arasan->phy);
		sdhci_arasan->is_phy_on = false;
	}

	FUNC6(host, clock);

	if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE)
		/*
		 * Some controllers immediately report SDHCI_CLOCK_INT_STABLE
		 * after enabling the clock even though the clock is not
		 * stable. Trying to use a clock without waiting here results
		 * in EILSEQ while detecting some older/slower cards. The
		 * chosen delay is the maximum delay from sdhci_set_clock.
		 */
		FUNC1(20);

	if (ctrl_phy) {
		FUNC3(sdhci_arasan->phy);
		sdhci_arasan->is_phy_on = true;
	}
}