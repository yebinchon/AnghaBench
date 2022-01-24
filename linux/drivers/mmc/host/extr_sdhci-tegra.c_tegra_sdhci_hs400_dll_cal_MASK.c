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
struct sdhci_host {int /*<<< orphan*/  mmc; scalar_t__ ioaddr; } ;

/* Variables and functions */
 int SDHCI_TEGRA_DLLCAL_CALIBRATE ; 
 int SDHCI_TEGRA_DLLCAL_STA_ACTIVE ; 
 int /*<<< orphan*/  SDHCI_TEGRA_VENDOR_DLLCAL_CFG ; 
 scalar_t__ SDHCI_TEGRA_VENDOR_DLLCAL_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	u32 reg;
	int err;

	reg = FUNC3(host, SDHCI_TEGRA_VENDOR_DLLCAL_CFG);
	reg |= SDHCI_TEGRA_DLLCAL_CALIBRATE;
	FUNC4(host, reg, SDHCI_TEGRA_VENDOR_DLLCAL_CFG);

	/* 1 ms sleep, 5 ms timeout */
	err = FUNC2(host->ioaddr + SDHCI_TEGRA_VENDOR_DLLCAL_STA,
				 reg, !(reg & SDHCI_TEGRA_DLLCAL_STA_ACTIVE),
				 1000, 5000);
	if (err)
		FUNC0(FUNC1(host->mmc),
			"HS400 delay line calibration timed out\n");
}