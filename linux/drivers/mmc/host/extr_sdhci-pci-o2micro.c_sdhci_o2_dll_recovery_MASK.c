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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pci_slot {struct sdhci_pci_chip* chip; } ;
struct sdhci_pci_chip {int /*<<< orphan*/  pdev; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct o2_host {size_t dll_adjust_count; } ;

/* Variables and functions */
 size_t DMDN_SZ ; 
 int /*<<< orphan*/  O2_PLL_DLL_WDT_CONTROL1 ; 
 int /*<<< orphan*/  O2_PLL_SOFT_RESET ; 
 int /*<<< orphan*/  O2_SD_FREG4_ENABLE_CLK_SET ; 
 int /*<<< orphan*/  O2_SD_FUNC_REG4 ; 
 int /*<<< orphan*/  O2_SD_LOCK_WP ; 
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_CLOCK_INT_EN ; 
 int /*<<< orphan*/ * dmdn_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_pci_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sdhci_host*) ; 
 struct o2_host* FUNC10 (struct sdhci_pci_slot*) ; 
 struct sdhci_pci_slot* FUNC11 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static int FUNC16(struct sdhci_host *host)
{
	int ret = 0;
	u8 scratch_8 = 0;
	u32 scratch_32 = 0;
	struct sdhci_pci_slot *slot = FUNC11(host);
	struct sdhci_pci_chip *chip = slot->chip;
	struct o2_host *o2_host = FUNC10(slot);

	/* UnLock WP */
	FUNC2(chip->pdev,
			O2_SD_LOCK_WP, &scratch_8);
	scratch_8 &= 0x7f;
	FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch_8);
	while (o2_host->dll_adjust_count < DMDN_SZ && !ret) {
		/* Disable clock */
		FUNC13(host, 0, SDHCI_CLOCK_CONTROL);

		/* PLL software reset */
		scratch_32 = FUNC12(host, O2_PLL_DLL_WDT_CONTROL1);
		scratch_32 |= O2_PLL_SOFT_RESET;
		FUNC14(host, scratch_32, O2_PLL_DLL_WDT_CONTROL1);

		FUNC3(chip->pdev,
					    O2_SD_FUNC_REG4,
					    &scratch_32);
		/* Enable Base Clk setting change */
		scratch_32 |= O2_SD_FREG4_ENABLE_CLK_SET;
		FUNC5(chip->pdev, O2_SD_FUNC_REG4, scratch_32);
		FUNC1(chip, dmdn_table[o2_host->dll_adjust_count]);

		/* Enable internal clock */
		scratch_8 = SDHCI_CLOCK_INT_EN;
		FUNC13(host, scratch_8, SDHCI_CLOCK_CONTROL);

		if (FUNC8(host->mmc)) {
			/*
			 * need wait at least 5ms for dll status stable,
			 * after enable internal clock
			 */
			FUNC15(5000, 6000);
			if (FUNC9(host)) {
				scratch_8 |= SDHCI_CLOCK_CARD_EN;
				FUNC13(host, scratch_8,
					SDHCI_CLOCK_CONTROL);
				ret = 1;
			} else {
				FUNC7("%s: DLL unlocked when dll_adjust_count is %d.\n",
					FUNC0(host->mmc),
					o2_host->dll_adjust_count);
			}
		} else {
			FUNC6("%s: card present detect failed.\n",
				FUNC0(host->mmc));
			break;
		}

		o2_host->dll_adjust_count++;
	}
	if (!ret && o2_host->dll_adjust_count == DMDN_SZ)
		FUNC6("%s: DLL adjust over max times\n",
		FUNC0(host->mmc));
	/* Lock WP */
	FUNC2(chip->pdev,
				   O2_SD_LOCK_WP, &scratch_8);
	scratch_8 |= 0x80;
	FUNC4(chip->pdev, O2_SD_LOCK_WP, scratch_8);
	return ret;
}