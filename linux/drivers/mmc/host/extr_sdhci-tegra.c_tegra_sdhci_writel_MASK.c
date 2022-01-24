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
typedef  int u8 ;
typedef  int u32 ;
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;

/* Variables and functions */
 int NVQUIRK_ENABLE_BLOCK_GAP_DET ; 
 scalar_t__ SDHCI_BLOCK_GAP_CONTROL ; 
 int SDHCI_INT_CARD_INT ; 
 int SDHCI_INT_CRC ; 
 int SDHCI_INT_ENABLE ; 
 int SDHCI_INT_TIMEOUT ; 
 int SDHCI_SIGNAL_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 struct sdhci_tegra* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host, u32 val, int reg)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_tegra *tegra_host = FUNC1(pltfm_host);
	const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;

	/* Seems like we're getting spurious timeout and crc errors, so
	 * disable signalling of them. In case of real errors software
	 * timers should take care of eventually detecting them.
	 */
	if (FUNC3(reg == SDHCI_SIGNAL_ENABLE))
		val &= ~(SDHCI_INT_TIMEOUT|SDHCI_INT_CRC);

	FUNC5(val, host->ioaddr + reg);

	if (FUNC3((soc_data->nvquirks & NVQUIRK_ENABLE_BLOCK_GAP_DET) &&
			(reg == SDHCI_INT_ENABLE))) {
		/* Erratum: Must enable block gap interrupt detection */
		u8 gap_ctrl = FUNC0(host->ioaddr + SDHCI_BLOCK_GAP_CONTROL);
		if (val & SDHCI_INT_CARD_INT)
			gap_ctrl |= 0x8;
		else
			gap_ctrl &= ~0x8;
		FUNC4(gap_ctrl, host->ioaddr + SDHCI_BLOCK_GAP_CONTROL);
	}
}