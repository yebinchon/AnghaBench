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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;

/* Variables and functions */
 int MMC_BUS_WIDTH_4 ; 
 int MMC_BUS_WIDTH_8 ; 
 int MMC_CARD ; 
 int MMC_WIDTH ; 
 int /*<<< orphan*/  SDHCI_CTRL_4BITBUS ; 
 scalar_t__ SDHCI_HOST_CONTROL ; 
 scalar_t__ SD_CE_ATA_2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host, int width)
{
	u8 ctrl;
	u16 tmp;

	ctrl = FUNC0(host->ioaddr + SDHCI_HOST_CONTROL);
	tmp = FUNC1(host->ioaddr + SD_CE_ATA_2);
	if (width == MMC_BUS_WIDTH_8) {
		ctrl &= ~SDHCI_CTRL_4BITBUS;
		tmp |= MMC_CARD | MMC_WIDTH;
	} else {
		tmp &= ~(MMC_CARD | MMC_WIDTH);
		if (width == MMC_BUS_WIDTH_4)
			ctrl |= SDHCI_CTRL_4BITBUS;
		else
			ctrl &= ~SDHCI_CTRL_4BITBUS;
	}
	FUNC3(tmp, host->ioaddr + SD_CE_ATA_2);
	FUNC2(ctrl, host->ioaddr + SDHCI_HOST_CONTROL);
}