#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int /*<<< orphan*/  base; int /*<<< orphan*/  fclk; TYPE_2__* mmc; } ;
struct mmc_ios {scalar_t__ timing; int /*<<< orphan*/  clock; } ;
struct TYPE_4__ {struct mmc_ios ios; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPA ; 
 unsigned long CLKD_MASK ; 
 int DTO ; 
 unsigned long DTO_MASK ; 
 int /*<<< orphan*/  HCTL ; 
 int HSMMC_HAS_HSPE_SUPPORT ; 
 unsigned long HSPE ; 
 unsigned long HSS ; 
 unsigned long ICE ; 
 unsigned long ICS ; 
 int /*<<< orphan*/  MMC_TIMEOUT_MS ; 
 scalar_t__ MMC_TIMING_MMC_DDR52 ; 
 scalar_t__ MMC_TIMING_UHS_DDR50 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  SYSCTL ; 
 unsigned long FUNC2 (struct omap_hsmmc_host*,struct mmc_ios*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (struct omap_hsmmc_host*) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_hsmmc_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_hsmmc_host*) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct omap_hsmmc_host *host)
{
	struct mmc_ios *ios = &host->mmc->ios;
	unsigned long regval;
	unsigned long timeout;
	unsigned long clkdiv;

	FUNC5(FUNC6(host->mmc), "Set clock to %uHz\n", ios->clock);

	FUNC10(host);

	regval = FUNC0(host->base, SYSCTL);
	regval = regval & ~(CLKD_MASK | DTO_MASK);
	clkdiv = FUNC2(host, ios);
	regval = regval | (clkdiv << 6) | (DTO << 16);
	FUNC1(host->base, SYSCTL, regval);
	FUNC1(host->base, SYSCTL,
		FUNC0(host->base, SYSCTL) | ICE);

	/* Wait till the ICS bit is set */
	timeout = jiffies + FUNC8(MMC_TIMEOUT_MS);
	while ((FUNC0(host->base, SYSCTL) & ICS) != ICS
		&& FUNC11(jiffies, timeout))
		FUNC4();

	/*
	 * Enable High-Speed Support
	 * Pre-Requisites
	 *	- Controller should support High-Speed-Enable Bit
	 *	- Controller should not be using DDR Mode
	 *	- Controller should advertise that it supports High Speed
	 *	  in capabilities register
	 *	- MMC/SD clock coming out of controller > 25MHz
	 */
	if ((FUNC7(host)->features & HSMMC_HAS_HSPE_SUPPORT) &&
	    (ios->timing != MMC_TIMING_MMC_DDR52) &&
	    (ios->timing != MMC_TIMING_UHS_DDR50) &&
	    ((FUNC0(host->base, CAPA) & HSS) == HSS)) {
		regval = FUNC0(host->base, HCTL);
		if (clkdiv && (FUNC3(host->fclk)/clkdiv) > 25000000)
			regval |= HSPE;
		else
			regval &= ~HSPE;

		FUNC1(host->base, HCTL, regval);
	}

	FUNC9(host);
}