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
struct sdhci_msm_offset {scalar_t__ core_vendor_spec; scalar_t__ core_vendor_spec3; } ;
struct sdhci_msm_host {int /*<<< orphan*/  use_cdclp533; struct sdhci_msm_offset* offset; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_HC_MCLK_SEL_DFLT ; 
 int /*<<< orphan*/  CORE_HC_MCLK_SEL_MASK ; 
 int /*<<< orphan*/  CORE_HC_SELECT_IN_EN ; 
 int /*<<< orphan*/  CORE_HC_SELECT_IN_MASK ; 
 int /*<<< orphan*/  CORE_PWRSAVE_DLL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct sdhci_msm_host* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_msm_host *msm_host = FUNC1(pltfm_host);
	u32 config;
	const struct sdhci_msm_offset *msm_offset =
					msm_host->offset;

	if (!msm_host->use_cdclp533) {
		config = FUNC0(host->ioaddr +
				msm_offset->core_vendor_spec3);
		config &= ~CORE_PWRSAVE_DLL;
		FUNC4(config, host->ioaddr +
				msm_offset->core_vendor_spec3);
	}

	config = FUNC0(host->ioaddr + msm_offset->core_vendor_spec);
	config &= ~CORE_HC_MCLK_SEL_MASK;
	config |= CORE_HC_MCLK_SEL_DFLT;
	FUNC4(config, host->ioaddr + msm_offset->core_vendor_spec);

	/*
	 * Disable HC_SELECT_IN to be able to use the UHS mode select
	 * configuration from Host Control2 register for all other
	 * modes.
	 * Write 0 to HC_SELECT_IN and HC_SELECT_IN_EN field
	 * in VENDOR_SPEC_FUNC
	 */
	config = FUNC0(host->ioaddr + msm_offset->core_vendor_spec);
	config &= ~CORE_HC_SELECT_IN_EN;
	config &= ~CORE_HC_SELECT_IN_MASK;
	FUNC4(config, host->ioaddr + msm_offset->core_vendor_spec);

	/*
	 * Make sure above writes impacting free running MCLK are completed
	 * before changing the clk_rate at GCC.
	 */
	FUNC3();
}