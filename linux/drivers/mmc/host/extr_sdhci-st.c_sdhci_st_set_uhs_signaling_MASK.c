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
typedef  int u16 ;
struct st_mmc_platform_data {int /*<<< orphan*/  top_ioaddr; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
#define  MMC_TIMING_MMC_DDR52 134 
#define  MMC_TIMING_MMC_HS200 133 
#define  MMC_TIMING_UHS_DDR50 132 
#define  MMC_TIMING_UHS_SDR104 131 
#define  MMC_TIMING_UHS_SDR12 130 
#define  MMC_TIMING_UHS_SDR25 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int SDHCI_CTRL_UHS_DDR50 ; 
 int SDHCI_CTRL_UHS_MASK ; 
 int SDHCI_CTRL_UHS_SDR104 ; 
 int SDHCI_CTRL_UHS_SDR12 ; 
 int SDHCI_CTRL_UHS_SDR25 ; 
 int SDHCI_CTRL_UHS_SDR50 ; 
 int SDHCI_CTRL_VDD_180 ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct st_mmc_platform_data* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sdhci_host *host,
					unsigned int uhs)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct st_mmc_platform_data *pdata = FUNC3(pltfm_host);
	u16 ctrl_2 = FUNC5(host, SDHCI_HOST_CONTROL2);
	int ret = 0;

	/* Select Bus Speed Mode for host */
	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
	switch (uhs) {
	/*
	 * Set V18_EN -- UHS modes do not work without this.
	 * does not change signaling voltage
	 */

	case MMC_TIMING_UHS_SDR12:
		FUNC8(pdata->top_ioaddr);
		ctrl_2 |= SDHCI_CTRL_UHS_SDR12 | SDHCI_CTRL_VDD_180;
		break;
	case MMC_TIMING_UHS_SDR25:
		FUNC8(pdata->top_ioaddr);
		ctrl_2 |= SDHCI_CTRL_UHS_SDR25 | SDHCI_CTRL_VDD_180;
		break;
	case MMC_TIMING_UHS_SDR50:
		FUNC8(pdata->top_ioaddr);
		ctrl_2 |= SDHCI_CTRL_UHS_SDR50 | SDHCI_CTRL_VDD_180;
		ret = FUNC6(host);
		break;
	case MMC_TIMING_UHS_SDR104:
	case MMC_TIMING_MMC_HS200:
		FUNC8(pdata->top_ioaddr);
		ctrl_2 |= SDHCI_CTRL_UHS_SDR104 | SDHCI_CTRL_VDD_180;
		ret =  FUNC6(host);
		break;
	case MMC_TIMING_UHS_DDR50:
	case MMC_TIMING_MMC_DDR52:
		FUNC8(pdata->top_ioaddr);
		ctrl_2 |= SDHCI_CTRL_UHS_DDR50 | SDHCI_CTRL_VDD_180;
		break;
	}

	if (ret)
		FUNC1(FUNC2(host->mmc), "Error setting dll for clock "
						"(uhs %d)\n", uhs);

	FUNC0(FUNC2(host->mmc), "uhs %d, ctrl_2 %04X\n", uhs, ctrl_2);

	FUNC7(host, ctrl_2, SDHCI_HOST_CONTROL2);
}