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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct sdhci_am654_data {int flags; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int CALDONE_MASK ; 
 int /*<<< orphan*/  CTL_CFG_2 ; 
 int DLL_PRESENT ; 
 int IOMUX_ENABLE_MASK ; 
 int IOMUX_PRESENT ; 
 int MMC_CAP_NONREMOVABLE ; 
 int OTAPDLYENA_MASK ; 
 int OTAPDLYSEL_MASK ; 
 int PDB_MASK ; 
 int /*<<< orphan*/  PHY_CTRL1 ; 
 int /*<<< orphan*/  PHY_CTRL4 ; 
 int /*<<< orphan*/  PHY_STAT1 ; 
 int SLOTTYPE_EMBEDDED ; 
 int SLOTTYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct sdhci_host*) ; 
 struct sdhci_am654_data* FUNC4 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC5 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC6(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC5(host);
	struct sdhci_am654_data *sdhci_am654 = FUNC4(pltfm_host);
	u32 ctl_cfg_2 = 0;
	u32 mask;
	u32 val;
	int ret;

	/* Reset OTAP to default value */
	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
	FUNC2(sdhci_am654->base, PHY_CTRL4, mask, 0x0);

	if (sdhci_am654->flags & DLL_PRESENT) {
		FUNC0(sdhci_am654->base, PHY_STAT1, &val);
		if (~val & CALDONE_MASK) {
			/* Calibrate IO lines */
			FUNC2(sdhci_am654->base, PHY_CTRL1,
					   PDB_MASK, PDB_MASK);
			ret = FUNC1(sdhci_am654->base,
						       PHY_STAT1, val,
						       val & CALDONE_MASK,
						       1, 20);
			if (ret)
				return ret;
		}
	}

	/* Enable pins by setting IO mux to 0 */
	if (sdhci_am654->flags & IOMUX_PRESENT)
		FUNC2(sdhci_am654->base, PHY_CTRL1,
				   IOMUX_ENABLE_MASK, 0);

	/* Set slot type based on SD or eMMC */
	if (host->mmc->caps & MMC_CAP_NONREMOVABLE)
		ctl_cfg_2 = SLOTTYPE_EMBEDDED;

	FUNC2(sdhci_am654->base, CTL_CFG_2, SLOTTYPE_MASK,
			   ctl_cfg_2);

	return FUNC3(host);
}