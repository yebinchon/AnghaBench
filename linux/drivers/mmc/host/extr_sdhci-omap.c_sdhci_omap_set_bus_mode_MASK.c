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
struct sdhci_omap_host {unsigned int bus_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CON_OD ; 
 unsigned int MMC_BUSMODE_OPENDRAIN ; 
 int /*<<< orphan*/  SDHCI_OMAP_CON ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_omap_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_omap_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_omap_host *omap_host,
				    unsigned int mode)
{
	u32 reg;

	if (omap_host->bus_mode == mode)
		return;

	reg = FUNC0(omap_host, SDHCI_OMAP_CON);
	if (mode == MMC_BUSMODE_OPENDRAIN)
		reg |= CON_OD;
	else
		reg &= ~CON_OD;
	FUNC1(omap_host, SDHCI_OMAP_CON, reg);

	omap_host->bus_mode = mode;
}