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
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  base; TYPE_1__* pdata; scalar_t__ power_mode; } ;
struct mmc_ios {int /*<<< orphan*/  vdd; scalar_t__ power_mode; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int controller_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUAL_VOLT_OCR_BIT ; 
 int /*<<< orphan*/  HCTL ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OMAP_HSMMC_SUPPORTS_DUAL_VOLT ; 
 int SDVSDET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct omap_hsmmc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hsmmc_host*,int) ; 
 scalar_t__ FUNC8 (struct omap_hsmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct omap_hsmmc_host *host = FUNC3(mmc);
	int do_send_init_stream = 0;

	if (ios->power_mode != host->power_mode) {
		switch (ios->power_mode) {
		case MMC_POWER_OFF:
			FUNC7(host, 0);
			break;
		case MMC_POWER_UP:
			FUNC7(host, 1);
			break;
		case MMC_POWER_ON:
			do_send_init_stream = 1;
			break;
		}
		host->power_mode = ios->power_mode;
	}

	/* FIXME: set registers based only on changes to ios */

	FUNC5(host);

	if (host->pdata->controller_flags & OMAP_HSMMC_SUPPORTS_DUAL_VOLT) {
		/* Only MMC1 can interface at 3V without some flavor
		 * of external transceiver; but they all handle 1.8V.
		 */
		if ((FUNC0(host->base, HCTL) & SDVSDET) &&
			(ios->vdd == DUAL_VOLT_OCR_BIT)) {
				/*
				 * The mmc_select_voltage fn of the core does
				 * not seem to set the power_mode to
				 * MMC_POWER_UP upon recalculating the voltage.
				 * vdd 1.8v.
				 */
			if (FUNC8(host, ios->vdd) != 0)
				FUNC1(FUNC2(host->mmc),
						"Switch operation failed\n");
		}
	}

	FUNC6(host);

	if (do_send_init_stream)
		FUNC9(host);

	FUNC4(host);
}