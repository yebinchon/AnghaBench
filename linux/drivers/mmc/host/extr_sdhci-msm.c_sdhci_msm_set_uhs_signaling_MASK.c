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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_offset {scalar_t__ core_dll_config; } ;
struct sdhci_msm_host {int calibration_done; struct sdhci_msm_offset* offset; } ;
struct sdhci_host {scalar_t__ clock; struct mmc_host* mmc; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int const timing; } ;
struct mmc_host {TYPE_1__ ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_DLL_PDN ; 
 int /*<<< orphan*/  CORE_DLL_RST ; 
 scalar_t__ CORE_FREQ_100MHZ ; 
#define  MMC_TIMING_MMC_DDR52 135 
#define  MMC_TIMING_MMC_HS200 134 
#define  MMC_TIMING_MMC_HS400 133 
#define  MMC_TIMING_UHS_DDR50 132 
#define  MMC_TIMING_UHS_SDR104 131 
#define  MMC_TIMING_UHS_SDR12 130 
#define  MMC_TIMING_UHS_SDR25 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_DDR50 ; 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_MASK ; 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_SDR104 ; 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_SDR12 ; 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_SDR25 ; 
 int /*<<< orphan*/  SDHCI_CTRL_UHS_SDR50 ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,TYPE_1__*) ; 
 struct sdhci_msm_host* FUNC5 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct sdhci_host *host,
					unsigned int uhs)
{
	struct mmc_host *mmc = host->mmc;
	struct sdhci_pltfm_host *pltfm_host = FUNC6(host);
	struct sdhci_msm_host *msm_host = FUNC5(pltfm_host);
	u16 ctrl_2;
	u32 config;
	const struct sdhci_msm_offset *msm_offset =
					msm_host->offset;

	ctrl_2 = FUNC7(host, SDHCI_HOST_CONTROL2);
	/* Select Bus Speed Mode for host */
	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
	switch (uhs) {
	case MMC_TIMING_UHS_SDR12:
		ctrl_2 |= SDHCI_CTRL_UHS_SDR12;
		break;
	case MMC_TIMING_UHS_SDR25:
		ctrl_2 |= SDHCI_CTRL_UHS_SDR25;
		break;
	case MMC_TIMING_UHS_SDR50:
		ctrl_2 |= SDHCI_CTRL_UHS_SDR50;
		break;
	case MMC_TIMING_MMC_HS400:
	case MMC_TIMING_MMC_HS200:
	case MMC_TIMING_UHS_SDR104:
		ctrl_2 |= SDHCI_CTRL_UHS_SDR104;
		break;
	case MMC_TIMING_UHS_DDR50:
	case MMC_TIMING_MMC_DDR52:
		ctrl_2 |= SDHCI_CTRL_UHS_DDR50;
		break;
	}

	/*
	 * When clock frequency is less than 100MHz, the feedback clock must be
	 * provided and DLL must not be used so that tuning can be skipped. To
	 * provide feedback clock, the mode selection can be any value less
	 * than 3'b011 in bits [2:0] of HOST CONTROL2 register.
	 */
	if (host->clock <= CORE_FREQ_100MHZ) {
		if (uhs == MMC_TIMING_MMC_HS400 ||
		    uhs == MMC_TIMING_MMC_HS200 ||
		    uhs == MMC_TIMING_UHS_SDR104)
			ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
		/*
		 * DLL is not required for clock <= 100MHz
		 * Thus, make sure DLL it is disabled when not required
		 */
		config = FUNC3(host->ioaddr +
				msm_offset->core_dll_config);
		config |= CORE_DLL_RST;
		FUNC9(config, host->ioaddr +
				msm_offset->core_dll_config);

		config = FUNC3(host->ioaddr +
				msm_offset->core_dll_config);
		config |= CORE_DLL_PDN;
		FUNC9(config, host->ioaddr +
				msm_offset->core_dll_config);

		/*
		 * The DLL needs to be restored and CDCLP533 recalibrated
		 * when the clock frequency is set back to 400MHz.
		 */
		msm_host->calibration_done = false;
	}

	FUNC0(FUNC1(mmc), "%s: clock=%u uhs=%u ctrl_2=0x%x\n",
		FUNC2(host->mmc), host->clock, uhs, ctrl_2);
	FUNC8(host, ctrl_2, SDHCI_HOST_CONTROL2);

	if (mmc->ios.timing == MMC_TIMING_MMC_HS400)
		FUNC4(host, &mmc->ios);
}