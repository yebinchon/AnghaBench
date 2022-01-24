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
struct xenon_priv {struct xenon_emmc_phy_regs* emmc_phy_regs; } ;
struct xenon_emmc_phy_regs {int /*<<< orphan*/  timing_adj; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int clock; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int XENON_FC_SYNC_EN_DURATION_MASK ; 
 int XENON_FC_SYNC_EN_DURATION_SHIFT ; 
 int XENON_FC_SYNC_RST_DURATION_MASK ; 
 int XENON_FC_SYNC_RST_DURATION_SHIFT ; 
 int XENON_FC_SYNC_RST_EN_DURATION_MASK ; 
 int XENON_FC_SYNC_RST_EN_DURATION_SHIFT ; 
 int XENON_LOWEST_SDCLK_FREQ ; 
 int XENON_PHY_INITIALIZAION ; 
 int XENON_WAIT_CYCLE_BEFORE_USING_MASK ; 
 int XENON_WAIT_CYCLE_BEFORE_USING_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xenon_priv* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sdhci_host *host)
{
	u32 reg;
	u32 wait, clock;
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct xenon_priv *priv = FUNC2(pltfm_host);
	struct xenon_emmc_phy_regs *phy_regs = priv->emmc_phy_regs;

	reg = FUNC4(host, phy_regs->timing_adj);
	reg |= XENON_PHY_INITIALIZAION;
	FUNC5(host, reg, phy_regs->timing_adj);

	/* Add duration of FC_SYNC_RST */
	wait = ((reg >> XENON_FC_SYNC_RST_DURATION_SHIFT) &
			XENON_FC_SYNC_RST_DURATION_MASK);
	/* Add interval between FC_SYNC_EN and FC_SYNC_RST */
	wait += ((reg >> XENON_FC_SYNC_RST_EN_DURATION_SHIFT) &
			XENON_FC_SYNC_RST_EN_DURATION_MASK);
	/* Add duration of asserting FC_SYNC_EN */
	wait += ((reg >> XENON_FC_SYNC_EN_DURATION_SHIFT) &
			XENON_FC_SYNC_EN_DURATION_MASK);
	/* Add duration of waiting for PHY */
	wait += ((reg >> XENON_WAIT_CYCLE_BEFORE_USING_SHIFT) &
			XENON_WAIT_CYCLE_BEFORE_USING_MASK);
	/* 4 additional bus clock and 4 AXI bus clock are required */
	wait += 8;
	wait <<= 20;

	clock = host->clock;
	if (!clock)
		/* Use the possibly slowest bus frequency value */
		clock = XENON_LOWEST_SDCLK_FREQ;
	/* get the wait time */
	wait /= clock;
	wait++;
	/* wait for host eMMC PHY init completes */
	FUNC6(wait);

	reg = FUNC4(host, phy_regs->timing_adj);
	reg &= XENON_PHY_INITIALIZAION;
	if (reg) {
		FUNC0(FUNC1(host->mmc), "eMMC PHY init cannot complete after %d us\n",
			wait);
		return -ETIMEDOUT;
	}

	return 0;
}