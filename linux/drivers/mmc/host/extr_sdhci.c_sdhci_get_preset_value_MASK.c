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
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {int timing; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
#define  MMC_TIMING_MMC_DDR52 135 
#define  MMC_TIMING_MMC_HS200 134 
#define  MMC_TIMING_MMC_HS400 133 
#define  MMC_TIMING_UHS_DDR50 132 
#define  MMC_TIMING_UHS_SDR104 131 
#define  MMC_TIMING_UHS_SDR12 130 
#define  MMC_TIMING_UHS_SDR25 129 
#define  MMC_TIMING_UHS_SDR50 128 
 int /*<<< orphan*/  SDHCI_PRESET_FOR_DDR50 ; 
 int /*<<< orphan*/  SDHCI_PRESET_FOR_HS400 ; 
 int /*<<< orphan*/  SDHCI_PRESET_FOR_SDR104 ; 
 int /*<<< orphan*/  SDHCI_PRESET_FOR_SDR12 ; 
 int /*<<< orphan*/  SDHCI_PRESET_FOR_SDR25 ; 
 int /*<<< orphan*/  SDHCI_PRESET_FOR_SDR50 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct sdhci_host *host)
{
	u16 preset = 0;

	switch (host->timing) {
	case MMC_TIMING_UHS_SDR12:
		preset = FUNC2(host, SDHCI_PRESET_FOR_SDR12);
		break;
	case MMC_TIMING_UHS_SDR25:
		preset = FUNC2(host, SDHCI_PRESET_FOR_SDR25);
		break;
	case MMC_TIMING_UHS_SDR50:
		preset = FUNC2(host, SDHCI_PRESET_FOR_SDR50);
		break;
	case MMC_TIMING_UHS_SDR104:
	case MMC_TIMING_MMC_HS200:
		preset = FUNC2(host, SDHCI_PRESET_FOR_SDR104);
		break;
	case MMC_TIMING_UHS_DDR50:
	case MMC_TIMING_MMC_DDR52:
		preset = FUNC2(host, SDHCI_PRESET_FOR_DDR50);
		break;
	case MMC_TIMING_MMC_HS400:
		preset = FUNC2(host, SDHCI_PRESET_FOR_HS400);
		break;
	default:
		FUNC1("%s: Invalid UHS-I mode selected\n",
			FUNC0(host->mmc));
		preset = FUNC2(host, SDHCI_PRESET_FOR_SDR12);
		break;
	}
	return preset;
}