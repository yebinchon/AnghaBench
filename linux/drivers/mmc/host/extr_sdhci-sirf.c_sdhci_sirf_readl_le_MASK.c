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
struct sdhci_host {TYPE_1__* mmc; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int MMC_CAP_UHS_SDR50 ; 
 int SDHCI_CAPABILITIES_1 ; 
 int SDHCI_SLOT_INT_STATUS ; 
 int SDHCI_SPEC_300 ; 
 int SDHCI_SUPPORT_DDR50 ; 
 int SDHCI_SUPPORT_SDR50 ; 
 int SDHCI_USE_SDR50_TUNING ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(struct sdhci_host *host, int reg)
{
	u32 val = FUNC0(host->ioaddr + reg);

	if (FUNC1((reg == SDHCI_CAPABILITIES_1) &&
			(host->mmc->caps & MMC_CAP_UHS_SDR50))) {
		/* fake CAP_1 register */
		val = SDHCI_SUPPORT_DDR50 |
			SDHCI_SUPPORT_SDR50 | SDHCI_USE_SDR50_TUNING;
	}

	if (FUNC1(reg == SDHCI_SLOT_INT_STATUS)) {
		u32 prss = val;
		/* fake chips as V3.0 host conreoller */
		prss &= ~(0xFF << 16);
		val = prss | (SDHCI_SPEC_300 << 16);
	}
	return val;
}