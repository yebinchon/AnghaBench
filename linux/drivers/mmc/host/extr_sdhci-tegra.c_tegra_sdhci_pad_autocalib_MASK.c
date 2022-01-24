#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sdhci_tegra_autocal_offsets {int pull_down_sdr104; int pull_up_sdr104; int pull_down_hs400; int pull_up_hs400; int pull_down_1v8; int pull_up_1v8; int pull_down_3v3; int pull_up_3v3; } ;
struct sdhci_tegra {struct sdhci_tegra_autocal_offsets autocal_offsets; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; scalar_t__ ioaddr; } ;
struct mmc_ios {int timing; int /*<<< orphan*/  signal_voltage; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_SIGNAL_VOLTAGE_180 ; 
#define  MMC_TIMING_MMC_HS400 129 
#define  MMC_TIMING_UHS_SDR104 128 
 int SDHCI_AUTO_CAL_ENABLE ; 
 int SDHCI_AUTO_CAL_START ; 
 int SDHCI_TEGRA_AUTO_CAL_ACTIVE ; 
 int /*<<< orphan*/  SDHCI_TEGRA_AUTO_CAL_CONFIG ; 
 scalar_t__ SDHCI_TEGRA_AUTO_CAL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (scalar_t__,int,int,int,int) ; 
 struct sdhci_tegra* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int) ; 
 int FUNC8 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sdhci_host*,int) ; 
 int FUNC10 (struct sdhci_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct sdhci_tegra *tegra_host = FUNC3(pltfm_host);
	struct sdhci_tegra_autocal_offsets offsets =
			tegra_host->autocal_offsets;
	struct mmc_ios *ios = &host->mmc->ios;
	bool card_clk_enabled;
	u16 pdpu;
	u32 reg;
	int ret;

	switch (ios->timing) {
	case MMC_TIMING_UHS_SDR104:
		pdpu = offsets.pull_down_sdr104 << 8 | offsets.pull_up_sdr104;
		break;
	case MMC_TIMING_MMC_HS400:
		pdpu = offsets.pull_down_hs400 << 8 | offsets.pull_up_hs400;
		break;
	default:
		if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180)
			pdpu = offsets.pull_down_1v8 << 8 | offsets.pull_up_1v8;
		else
			pdpu = offsets.pull_down_3v3 << 8 | offsets.pull_up_3v3;
	}

	/* Set initial offset before auto-calibration */
	FUNC9(host, pdpu);

	card_clk_enabled = FUNC8(host, false);

	FUNC7(host, true);

	reg = FUNC5(host, SDHCI_TEGRA_AUTO_CAL_CONFIG);
	reg |= SDHCI_AUTO_CAL_ENABLE | SDHCI_AUTO_CAL_START;
	FUNC6(host, reg, SDHCI_TEGRA_AUTO_CAL_CONFIG);

	FUNC11(1, 2);
	/* 10 ms timeout */
	ret = FUNC2(host->ioaddr + SDHCI_TEGRA_AUTO_CAL_STATUS,
				 reg, !(reg & SDHCI_TEGRA_AUTO_CAL_ACTIVE),
				 1000, 10000);

	FUNC7(host, false);

	FUNC8(host, card_clk_enabled);

	if (ret) {
		FUNC0(FUNC1(host->mmc), "Pad autocal timed out\n");

		/* Disable automatic cal and use fixed Drive Strengths */
		reg = FUNC5(host, SDHCI_TEGRA_AUTO_CAL_CONFIG);
		reg &= ~SDHCI_AUTO_CAL_ENABLE;
		FUNC6(host, reg, SDHCI_TEGRA_AUTO_CAL_CONFIG);

		ret = FUNC10(host, ios->signal_voltage, false);
		if (ret < 0)
			FUNC0(FUNC1(host->mmc),
				"Setting drive strengths failed: %d\n", ret);
	}
}