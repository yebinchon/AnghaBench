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
struct xenon_priv {scalar_t__ phy_type; struct xenon_emmc_phy_regs* emmc_phy_regs; } ;
struct xenon_emmc_phy_regs {int dll_update; int /*<<< orphan*/  dll_ctrl; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; int /*<<< orphan*/  mmc; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EMMC_5_1_PHY ; 
 int ETIMEDOUT ; 
 scalar_t__ MMC_HIGH_52_MAX_DTR ; 
 scalar_t__ FUNC0 (int) ; 
 int XENON_DLL_BYPASS_EN ; 
 int XENON_DLL_ENABLE ; 
 int XENON_DLL_FAST_LOCK ; 
 int XENON_DLL_LOCK_STATE ; 
 int XENON_DLL_PHASE_90_DEGREE ; 
 int XENON_DLL_PHASE_MASK ; 
 int XENON_DLL_PHSEL0_SHIFT ; 
 int XENON_DLL_PHSEL1_SHIFT ; 
 int XENON_DLL_REFCLK_SEL ; 
 int /*<<< orphan*/  XENON_SLOT_EXT_PRESENT_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct xenon_priv* FUNC6 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC7 (struct sdhci_host*) ; 
 int FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sdhci_host *host)
{
	u32 reg;
	struct sdhci_pltfm_host *pltfm_host = FUNC7(host);
	struct xenon_priv *priv = FUNC6(pltfm_host);
	struct xenon_emmc_phy_regs *phy_regs = priv->emmc_phy_regs;
	ktime_t timeout;

	if (FUNC0(host->clock <= MMC_HIGH_52_MAX_DTR))
		return -EINVAL;

	reg = FUNC8(host, phy_regs->dll_ctrl);
	if (reg & XENON_DLL_ENABLE)
		return 0;

	/* Enable DLL */
	reg = FUNC8(host, phy_regs->dll_ctrl);
	reg |= (XENON_DLL_ENABLE | XENON_DLL_FAST_LOCK);

	/*
	 * Set Phase as 90 degree, which is most common value.
	 * Might set another value if necessary.
	 * The granularity is 1 degree.
	 */
	reg &= ~((XENON_DLL_PHASE_MASK << XENON_DLL_PHSEL0_SHIFT) |
		 (XENON_DLL_PHASE_MASK << XENON_DLL_PHSEL1_SHIFT));
	reg |= ((XENON_DLL_PHASE_90_DEGREE << XENON_DLL_PHSEL0_SHIFT) |
		(XENON_DLL_PHASE_90_DEGREE << XENON_DLL_PHSEL1_SHIFT));

	reg &= ~XENON_DLL_BYPASS_EN;
	reg |= phy_regs->dll_update;
	if (priv->phy_type == EMMC_5_1_PHY)
		reg &= ~XENON_DLL_REFCLK_SEL;
	FUNC10(host, reg, phy_regs->dll_ctrl);

	/* Wait max 32 ms */
	timeout = FUNC2(FUNC4(), 32);
	while (1) {
		bool timedout = FUNC3(FUNC4(), timeout);

		if (FUNC9(host, XENON_SLOT_EXT_PRESENT_STATE) &
		    XENON_DLL_LOCK_STATE)
			break;
		if (timedout) {
			FUNC1(FUNC5(host->mmc), "Wait for DLL Lock time-out\n");
			return -ETIMEDOUT;
		}
		FUNC11(100);
	}
	return 0;
}