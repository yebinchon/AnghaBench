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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sdhci_host {int flags; scalar_t__ version; int quirks2; int clock; int quirks; int timeout_clk; TYPE_3__* ops; int /*<<< orphan*/  timing; int /*<<< orphan*/  preset_enabled; TYPE_2__* mmc; } ;
struct mmc_ios {int clock; int drv_type; int /*<<< orphan*/  timing; int /*<<< orphan*/  bus_width; int /*<<< orphan*/  power_mode; int /*<<< orphan*/  vdd; } ;
struct TYPE_4__ {int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct TYPE_6__ {int (* get_max_timeout_count ) (struct sdhci_host*) ;int /*<<< orphan*/  (* set_clock ) (struct sdhci_host*,int) ;int /*<<< orphan*/  (* set_uhs_signaling ) (struct sdhci_host*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_bus_width ) (struct sdhci_host*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* platform_send_init_74_clocks ) (struct sdhci_host*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_power ) (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int actual_clock; int max_busy_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMC_POWER_OFF ; 
 int /*<<< orphan*/  MMC_POWER_UNDEFINED ; 
 int /*<<< orphan*/  MMC_POWER_UP ; 
 int MMC_SET_DRIVER_TYPE_A ; 
 int MMC_SET_DRIVER_TYPE_B ; 
 int MMC_SET_DRIVER_TYPE_C ; 
 int MMC_SET_DRIVER_TYPE_D ; 
 int /*<<< orphan*/  MMC_TIMING_MMC_DDR52 ; 
 int /*<<< orphan*/  MMC_TIMING_MMC_HS ; 
 int /*<<< orphan*/  MMC_TIMING_MMC_HS200 ; 
 int /*<<< orphan*/  MMC_TIMING_MMC_HS400 ; 
 int /*<<< orphan*/  MMC_TIMING_SD_HS ; 
 int /*<<< orphan*/  MMC_TIMING_UHS_DDR50 ; 
 int /*<<< orphan*/  MMC_TIMING_UHS_SDR104 ; 
 int /*<<< orphan*/  MMC_TIMING_UHS_SDR12 ; 
 int /*<<< orphan*/  MMC_TIMING_UHS_SDR25 ; 
 int /*<<< orphan*/  MMC_TIMING_UHS_SDR50 ; 
 int SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_CTRL_DRV_TYPE_A ; 
 int SDHCI_CTRL_DRV_TYPE_B ; 
 int SDHCI_CTRL_DRV_TYPE_C ; 
 int SDHCI_CTRL_DRV_TYPE_D ; 
 int SDHCI_CTRL_DRV_TYPE_MASK ; 
 int /*<<< orphan*/  SDHCI_CTRL_HISPD ; 
 int SDHCI_DEVICE_DEAD ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int SDHCI_PRESET_DRV_MASK ; 
 int SDHCI_PRESET_DRV_SHIFT ; 
 int SDHCI_QUIRK2_PRESET_VALUE_BROKEN ; 
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ; 
 int SDHCI_QUIRK_NO_HISPD_BIT ; 
 int SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS ; 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 scalar_t__ SDHCI_SPEC_300 ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int) ; 
 int FUNC7 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC11 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sdhci_host*,int) ; 
 int FUNC16 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sdhci_host*,int) ; 

void FUNC23(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC2(mmc);
	u8 ctrl;

	if (ios->power_mode == MMC_POWER_UNDEFINED)
		return;

	if (host->flags & SDHCI_DEVICE_DEAD) {
		if (!FUNC0(mmc->supply.vmmc) &&
		    ios->power_mode == MMC_POWER_OFF)
			FUNC3(mmc, mmc->supply.vmmc, 0);
		return;
	}

	/*
	 * Reset the chip on each power off.
	 * Should clear out any weird states.
	 */
	if (ios->power_mode == MMC_POWER_OFF) {
		FUNC13(host, 0, SDHCI_SIGNAL_ENABLE);
		FUNC10(host);
	}

	if (host->version >= SDHCI_SPEC_300 &&
		(ios->power_mode == MMC_POWER_UP) &&
		!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN))
		FUNC6(host, false);

	if (!ios->clock || ios->clock != host->clock) {
		host->ops->set_clock(host, ios->clock);
		host->clock = ios->clock;

		if (host->quirks & SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK &&
		    host->clock) {
			host->timeout_clk = host->mmc->actual_clock ?
						host->mmc->actual_clock / 1000 :
						host->clock / 1000;
			host->mmc->max_busy_timeout =
				host->ops->get_max_timeout_count ?
				host->ops->get_max_timeout_count(host) :
				1 << 27;
			host->mmc->max_busy_timeout /= host->timeout_clk;
		}
	}

	if (host->ops->set_power)
		host->ops->set_power(host, ios->power_mode, ios->vdd);
	else
		FUNC11(host, ios->power_mode, ios->vdd);

	if (host->ops->platform_send_init_74_clocks)
		host->ops->platform_send_init_74_clocks(host, ios->power_mode);

	host->ops->set_bus_width(host, ios->bus_width);

	ctrl = FUNC8(host, SDHCI_HOST_CONTROL);

	if (!(host->quirks & SDHCI_QUIRK_NO_HISPD_BIT)) {
		if (ios->timing == MMC_TIMING_SD_HS ||
		     ios->timing == MMC_TIMING_MMC_HS ||
		     ios->timing == MMC_TIMING_MMC_HS400 ||
		     ios->timing == MMC_TIMING_MMC_HS200 ||
		     ios->timing == MMC_TIMING_MMC_DDR52 ||
		     ios->timing == MMC_TIMING_UHS_SDR50 ||
		     ios->timing == MMC_TIMING_UHS_SDR104 ||
		     ios->timing == MMC_TIMING_UHS_DDR50 ||
		     ios->timing == MMC_TIMING_UHS_SDR25)
			ctrl |= SDHCI_CTRL_HISPD;
		else
			ctrl &= ~SDHCI_CTRL_HISPD;
	}

	if (host->version >= SDHCI_SPEC_300) {
		u16 clk, ctrl_2;

		if (!host->preset_enabled) {
			FUNC12(host, ctrl, SDHCI_HOST_CONTROL);
			/*
			 * We only need to set Driver Strength if the
			 * preset value enable is not set.
			 */
			ctrl_2 = FUNC9(host, SDHCI_HOST_CONTROL2);
			ctrl_2 &= ~SDHCI_CTRL_DRV_TYPE_MASK;
			if (ios->drv_type == MMC_SET_DRIVER_TYPE_A)
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_A;
			else if (ios->drv_type == MMC_SET_DRIVER_TYPE_B)
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_B;
			else if (ios->drv_type == MMC_SET_DRIVER_TYPE_C)
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_C;
			else if (ios->drv_type == MMC_SET_DRIVER_TYPE_D)
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_D;
			else {
				FUNC4("%s: invalid driver type, default to driver type B\n",
					FUNC1(mmc));
				ctrl_2 |= SDHCI_CTRL_DRV_TYPE_B;
			}

			FUNC14(host, ctrl_2, SDHCI_HOST_CONTROL2);
		} else {
			/*
			 * According to SDHC Spec v3.00, if the Preset Value
			 * Enable in the Host Control 2 register is set, we
			 * need to reset SD Clock Enable before changing High
			 * Speed Enable to avoid generating clock gliches.
			 */

			/* Reset SD Clock Enable */
			clk = FUNC9(host, SDHCI_CLOCK_CONTROL);
			clk &= ~SDHCI_CLOCK_CARD_EN;
			FUNC14(host, clk, SDHCI_CLOCK_CONTROL);

			FUNC12(host, ctrl, SDHCI_HOST_CONTROL);

			/* Re-enable SD Clock */
			host->ops->set_clock(host, host->clock);
		}

		/* Reset SD Clock Enable */
		clk = FUNC9(host, SDHCI_CLOCK_CONTROL);
		clk &= ~SDHCI_CLOCK_CARD_EN;
		FUNC14(host, clk, SDHCI_CLOCK_CONTROL);

		host->ops->set_uhs_signaling(host, ios->timing);
		host->timing = ios->timing;

		if (!(host->quirks2 & SDHCI_QUIRK2_PRESET_VALUE_BROKEN) &&
				((ios->timing == MMC_TIMING_UHS_SDR12) ||
				 (ios->timing == MMC_TIMING_UHS_SDR25) ||
				 (ios->timing == MMC_TIMING_UHS_SDR50) ||
				 (ios->timing == MMC_TIMING_UHS_SDR104) ||
				 (ios->timing == MMC_TIMING_UHS_DDR50) ||
				 (ios->timing == MMC_TIMING_MMC_DDR52))) {
			u16 preset;

			FUNC6(host, true);
			preset = FUNC7(host);
			ios->drv_type = (preset & SDHCI_PRESET_DRV_MASK)
				>> SDHCI_PRESET_DRV_SHIFT;
		}

		/* Re-enable SD Clock */
		host->ops->set_clock(host, host->clock);
	} else
		FUNC12(host, ctrl, SDHCI_HOST_CONTROL);

	/*
	 * Some (ENE) controllers go apeshit on some ios operation,
	 * signalling timeout and CRC errors even on CMD0. Resetting
	 * it on each ios seems to solve the problem.
	 */
	if (host->quirks & SDHCI_QUIRK_RESET_CMD_DATA_ON_IOS)
		FUNC5(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
}