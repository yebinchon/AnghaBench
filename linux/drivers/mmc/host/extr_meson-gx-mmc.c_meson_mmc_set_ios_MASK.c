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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_ios {int power_mode; int bus_width; int /*<<< orphan*/  vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct meson_host {int vqmmc_enabled; int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_BUS_WIDTH_1 ; 
 int /*<<< orphan*/  CFG_BUS_WIDTH_4 ; 
 int /*<<< orphan*/  CFG_BUS_WIDTH_8 ; 
 int /*<<< orphan*/  CFG_BUS_WIDTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  MMC_BUS_WIDTH_1 133 
#define  MMC_BUS_WIDTH_4 132 
#define  MMC_BUS_WIDTH_8 131 
#define  MMC_POWER_OFF 130 
#define  MMC_POWER_ON 129 
#define  MMC_POWER_UP 128 
 scalar_t__ SD_EMMC_CFG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_host*,struct mmc_ios*) ; 
 int FUNC5 (struct meson_host*,struct mmc_ios*) ; 
 struct meson_host* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct meson_host *host = FUNC6(mmc);
	u32 bus_width, val;
	int err;

	/*
	 * GPIO regulator, only controls switching between 1v8 and
	 * 3v3, doesn't support MMC_POWER_OFF, MMC_POWER_ON.
	 */
	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		if (!FUNC1(mmc->supply.vmmc))
			FUNC7(mmc, mmc->supply.vmmc, 0);

		if (!FUNC1(mmc->supply.vqmmc) && host->vqmmc_enabled) {
			FUNC9(mmc->supply.vqmmc);
			host->vqmmc_enabled = false;
		}

		break;

	case MMC_POWER_UP:
		if (!FUNC1(mmc->supply.vmmc))
			FUNC7(mmc, mmc->supply.vmmc, ios->vdd);

		break;

	case MMC_POWER_ON:
		if (!FUNC1(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
			int ret = FUNC10(mmc->supply.vqmmc);

			if (ret < 0)
				FUNC3(host->dev,
					"failed to enable vqmmc regulator\n");
			else
				host->vqmmc_enabled = true;
		}

		break;
	}

	/* Bus width */
	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_1:
		bus_width = CFG_BUS_WIDTH_1;
		break;
	case MMC_BUS_WIDTH_4:
		bus_width = CFG_BUS_WIDTH_4;
		break;
	case MMC_BUS_WIDTH_8:
		bus_width = CFG_BUS_WIDTH_8;
		break;
	default:
		FUNC3(host->dev, "Invalid ios->bus_width: %u.  Setting to 4.\n",
			ios->bus_width);
		bus_width = CFG_BUS_WIDTH_4;
	}

	val = FUNC8(host->regs + SD_EMMC_CFG);
	val &= ~CFG_BUS_WIDTH_MASK;
	val |= FUNC0(CFG_BUS_WIDTH_MASK, bus_width);
	FUNC11(val, host->regs + SD_EMMC_CFG);

	FUNC4(host, ios);
	err = FUNC5(host, ios);
	if (err)
		FUNC3(host->dev, "Failed to set clock: %d\n,", err);

	FUNC2(host->dev, "SD_EMMC_CFG:  0x%08x\n", val);
}