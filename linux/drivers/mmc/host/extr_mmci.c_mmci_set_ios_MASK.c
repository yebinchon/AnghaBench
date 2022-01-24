#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct variant_data {int pwrreg_powerup; int opendrain; scalar_t__ explicit_mclk_control; scalar_t__ pwrreg_clkgate; scalar_t__ signal_direction; } ;
struct mmci_host {int vqmmc_enabled; int pwr_reg_add; scalar_t__ clock_cache; int /*<<< orphan*/  lock; TYPE_3__* ops; int /*<<< orphan*/  clk; int /*<<< orphan*/  mclk; struct mmc_host* mmc; struct variant_data* variant; int /*<<< orphan*/  pins_default; int /*<<< orphan*/  pinctrl; int /*<<< orphan*/  pins_opendrain; TYPE_1__* plat; } ;
struct mmc_ios {int power_mode; scalar_t__ bus_width; scalar_t__ bus_mode; scalar_t__ clock; int /*<<< orphan*/  vdd; } ;
struct TYPE_5__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_2__ supply; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_pwrreg ) (struct mmci_host*,int) ;int /*<<< orphan*/  (* set_clkreg ) (struct mmci_host*,scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ (* ios_handler ) (int /*<<< orphan*/ ,struct mmc_ios*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCI_PWR_ON ; 
 int MCI_ST_DATA2DIREN ; 
 int MCI_ST_DATA31DIREN ; 
 int MCI_ST_DATA74DIREN ; 
 scalar_t__ MMC_BUSMODE_OPENDRAIN ; 
 scalar_t__ MMC_BUS_WIDTH_1 ; 
 scalar_t__ MMC_BUS_WIDTH_4 ; 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmci_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mmci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct mmci_host*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC16 (struct mmci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct mmci_host*,int) ; 

__attribute__((used)) static void FUNC18(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct mmci_host *host = FUNC5(mmc);
	struct variant_data *variant = host->variant;
	u32 pwr = 0;
	unsigned long flags;
	int ret;

	if (host->plat->ios_handler &&
		host->plat->ios_handler(FUNC4(mmc), ios))
			FUNC3(FUNC4(mmc), "platform ios_handler failed\n");

	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		if (!FUNC0(mmc->supply.vmmc))
			FUNC6(mmc, mmc->supply.vmmc, 0);

		if (!FUNC0(mmc->supply.vqmmc) && host->vqmmc_enabled) {
			FUNC11(mmc->supply.vqmmc);
			host->vqmmc_enabled = false;
		}

		break;
	case MMC_POWER_UP:
		if (!FUNC0(mmc->supply.vmmc))
			FUNC6(mmc, mmc->supply.vmmc, ios->vdd);

		/*
		 * The ST Micro variant doesn't have the PL180s MCI_PWR_UP
		 * and instead uses MCI_PWR_ON so apply whatever value is
		 * configured in the variant data.
		 */
		pwr |= variant->pwrreg_powerup;

		break;
	case MMC_POWER_ON:
		if (!FUNC0(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
			ret = FUNC12(mmc->supply.vqmmc);
			if (ret < 0)
				FUNC3(FUNC4(mmc),
					"failed to enable vqmmc regulator\n");
			else
				host->vqmmc_enabled = true;
		}

		pwr |= MCI_PWR_ON;
		break;
	}

	if (variant->signal_direction && ios->power_mode != MMC_POWER_OFF) {
		/*
		 * The ST Micro variant has some additional bits
		 * indicating signal direction for the signals in
		 * the SD/MMC bus and feedback-clock usage.
		 */
		pwr |= host->pwr_reg_add;

		if (ios->bus_width == MMC_BUS_WIDTH_4)
			pwr &= ~MCI_ST_DATA74DIREN;
		else if (ios->bus_width == MMC_BUS_WIDTH_1)
			pwr &= (~MCI_ST_DATA74DIREN &
				~MCI_ST_DATA31DIREN &
				~MCI_ST_DATA2DIREN);
	}

	if (variant->opendrain) {
		if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN)
			pwr |= variant->opendrain;
	} else {
		/*
		 * If the variant cannot configure the pads by its own, then we
		 * expect the pinctrl to be able to do that for us
		 */
		if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN)
			FUNC10(host->pinctrl, host->pins_opendrain);
		else
			FUNC10(host->pinctrl, host->pins_default);
	}

	/*
	 * If clock = 0 and the variant requires the MMCIPOWER to be used for
	 * gating the clock, the MCI_PWR_ON bit is cleared.
	 */
	if (!ios->clock && variant->pwrreg_clkgate)
		pwr &= ~MCI_PWR_ON;

	if (host->variant->explicit_mclk_control &&
	    ios->clock != host->clock_cache) {
		ret = FUNC2(host->clk, ios->clock);
		if (ret < 0)
			FUNC3(FUNC4(host->mmc),
				"Error setting clock rate (%d)\n", ret);
		else
			host->mclk = FUNC1(host->clk);
	}
	host->clock_cache = ios->clock;

	FUNC13(&host->lock, flags);

	if (host->ops && host->ops->set_clkreg)
		host->ops->set_clkreg(host, ios->clock);
	else
		FUNC8(host, ios->clock);

	if (host->ops && host->ops->set_pwrreg)
		host->ops->set_pwrreg(host, pwr);
	else
		FUNC9(host, pwr);

	FUNC7(host);

	FUNC14(&host->lock, flags);
}