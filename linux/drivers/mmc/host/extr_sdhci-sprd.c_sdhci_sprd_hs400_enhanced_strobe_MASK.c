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
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_sprd_host {int /*<<< orphan*/ * phy_delay; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int /*<<< orphan*/  enhanced_strobe; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int MMC_TIMING_MMC_HS400 ; 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_MASK ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  SDHCI_SPRD_CTRL_HS400ES ; 
 int /*<<< orphan*/  SDHCI_SPRD_REG_32_DLL_DLY ; 
 struct sdhci_sprd_host* FUNC0 (struct sdhci_host*) ; 
 struct sdhci_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc,
					     struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC1(mmc);
	struct sdhci_sprd_host *sprd_host = FUNC0(host);
	u32 *p = sprd_host->phy_delay;
	u16 ctrl_2;

	if (!ios->enhanced_strobe)
		return;

	FUNC3(host);

	/* Set HS400 enhanced strobe mode */
	ctrl_2 = FUNC2(host, SDHCI_HOST_CONTROL2);
	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
	ctrl_2 |= SDHCI_SPRD_CTRL_HS400ES;
	FUNC6(host, ctrl_2, SDHCI_HOST_CONTROL2);

	FUNC4(host);

	/* Set the PHY DLL delay value for HS400 enhanced strobe mode */
	FUNC5(host, p[MMC_TIMING_MMC_HS400 + 1],
		     SDHCI_SPRD_REG_32_DLL_DLY);
}