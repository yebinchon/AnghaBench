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
typedef  unsigned int u32 ;
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int NVQUIRK_DIS_CARD_CLK_CONFIG_TAP ; 
 unsigned int SDHCI_CLOCK_CTRL_TAP_MASK ; 
 unsigned int SDHCI_CLOCK_CTRL_TAP_SHIFT ; 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  SDHCI_TEGRA_VENDOR_CLOCK_CTRL ; 
 struct sdhci_tegra* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 unsigned int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host, unsigned int tap)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct sdhci_tegra *tegra_host = FUNC0(pltfm_host);
	const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;
	bool card_clk_enabled = false;
	u32 reg;

	/*
	 * Touching the tap values is a bit tricky on some SoC generations.
	 * The quirk enables a workaround for a glitch that sometimes occurs if
	 * the tap values are changed.
	 */

	if (soc_data->nvquirks & NVQUIRK_DIS_CARD_CLK_CONFIG_TAP)
		card_clk_enabled = FUNC5(host, false);

	reg = FUNC2(host, SDHCI_TEGRA_VENDOR_CLOCK_CTRL);
	reg &= ~SDHCI_CLOCK_CTRL_TAP_MASK;
	reg |= tap << SDHCI_CLOCK_CTRL_TAP_SHIFT;
	FUNC4(host, reg, SDHCI_TEGRA_VENDOR_CLOCK_CTRL);

	if (soc_data->nvquirks & NVQUIRK_DIS_CARD_CLK_CONFIG_TAP &&
	    card_clk_enabled) {
		FUNC6(1);
		FUNC3(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
		FUNC5(host, card_clk_enabled);
	}
}