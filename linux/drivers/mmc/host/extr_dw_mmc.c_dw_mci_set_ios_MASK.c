#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mmc_ios {int bus_width; scalar_t__ timing; scalar_t__ clock; int power_mode; int /*<<< orphan*/  vdd; } ;
struct TYPE_6__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct dw_mci_slot {int id; scalar_t__ clock; TYPE_2__* host; int /*<<< orphan*/  flags; int /*<<< orphan*/  ctype; } ;
struct dw_mci_drv_data {int /*<<< orphan*/  (* set_ios ) (TYPE_2__*,struct mmc_ios*) ;} ;
struct TYPE_7__ {scalar_t__ timing; int vqmmc_enabled; scalar_t__ state; int /*<<< orphan*/  dev; struct dw_mci_drv_data* drv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_MMC_CARD_NEED_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MMC_BUS_WIDTH_4 132 
#define  MMC_BUS_WIDTH_8 131 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 scalar_t__ MMC_TIMING_MMC_DDR52 ; 
 scalar_t__ MMC_TIMING_MMC_HS400 ; 
 scalar_t__ MMC_TIMING_UHS_DDR50 ; 
 int /*<<< orphan*/  PWREN ; 
 int /*<<< orphan*/  SDMMC_CTRL_ALL_RESET_FLAGS ; 
 int /*<<< orphan*/  SDMMC_CTYPE_1BIT ; 
 int /*<<< orphan*/  SDMMC_CTYPE_4BIT ; 
 int /*<<< orphan*/  SDMMC_CTYPE_8BIT ; 
 scalar_t__ STATE_IDLE ; 
 scalar_t__ STATE_WAITING_CMD11_DONE ; 
 int /*<<< orphan*/  UHS_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci_slot*,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct dw_mci_slot* FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct mmc_ios*) ; 

__attribute__((used)) static void FUNC12(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct dw_mci_slot *slot = FUNC6(mmc);
	const struct dw_mci_drv_data *drv_data = slot->host->drv_data;
	u32 regs;
	int ret;

	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_4:
		slot->ctype = SDMMC_CTYPE_4BIT;
		break;
	case MMC_BUS_WIDTH_8:
		slot->ctype = SDMMC_CTYPE_8BIT;
		break;
	default:
		/* set default 1 bit mode */
		slot->ctype = SDMMC_CTYPE_1BIT;
	}

	regs = FUNC4(slot->host, UHS_REG);

	/* DDR mode set */
	if (ios->timing == MMC_TIMING_MMC_DDR52 ||
	    ios->timing == MMC_TIMING_UHS_DDR50 ||
	    ios->timing == MMC_TIMING_MMC_HS400)
		regs |= ((0x1 << slot->id) << 16);
	else
		regs &= ~((0x1 << slot->id) << 16);

	FUNC5(slot->host, UHS_REG, regs);
	slot->host->timing = ios->timing;

	/*
	 * Use mirror of ios->clock to prevent race with mmc
	 * core ios update when finding the minimum.
	 */
	slot->clock = ios->clock;

	if (drv_data && drv_data->set_ios)
		drv_data->set_ios(slot->host, ios);

	switch (ios->power_mode) {
	case MMC_POWER_UP:
		if (!FUNC0(mmc->supply.vmmc)) {
			ret = FUNC7(mmc, mmc->supply.vmmc,
					ios->vdd);
			if (ret) {
				FUNC1(slot->host->dev,
					"failed to enable vmmc regulator\n");
				/*return, if failed turn on vmmc*/
				return;
			}
		}
		FUNC10(DW_MMC_CARD_NEED_INIT, &slot->flags);
		regs = FUNC4(slot->host, PWREN);
		regs |= (1 << slot->id);
		FUNC5(slot->host, PWREN, regs);
		break;
	case MMC_POWER_ON:
		if (!slot->host->vqmmc_enabled) {
			if (!FUNC0(mmc->supply.vqmmc)) {
				ret = FUNC9(mmc->supply.vqmmc);
				if (ret < 0)
					FUNC1(slot->host->dev,
						"failed to enable vqmmc\n");
				else
					slot->host->vqmmc_enabled = true;

			} else {
				/* Keep track so we don't reset again */
				slot->host->vqmmc_enabled = true;
			}

			/* Reset our state machine after powering on */
			FUNC2(slot->host,
					  SDMMC_CTRL_ALL_RESET_FLAGS);
		}

		/* Adjust clock / bus width after power is up */
		FUNC3(slot, false);

		break;
	case MMC_POWER_OFF:
		/* Turn clock off before power goes down */
		FUNC3(slot, false);

		if (!FUNC0(mmc->supply.vmmc))
			FUNC7(mmc, mmc->supply.vmmc, 0);

		if (!FUNC0(mmc->supply.vqmmc) && slot->host->vqmmc_enabled)
			FUNC8(mmc->supply.vqmmc);
		slot->host->vqmmc_enabled = false;

		regs = FUNC4(slot->host, PWREN);
		regs &= ~(1 << slot->id);
		FUNC5(slot->host, PWREN, regs);
		break;
	default:
		break;
	}

	if (slot->host->state == STATE_WAITING_CMD11_DONE && ios->clock != 0)
		slot->host->state = STATE_IDLE;
}