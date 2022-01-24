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
struct TYPE_2__ {struct davinci_mmc_config* platform_data; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_1__ dev; } ;
struct mmc_ios {int const power_mode; int bus_width; int /*<<< orphan*/  bus_mode; int /*<<< orphan*/  vdd; int /*<<< orphan*/  clock; } ;
struct mmc_host {int /*<<< orphan*/  parent; } ;
struct mmc_davinci_host {int /*<<< orphan*/  mmc; scalar_t__ base; int /*<<< orphan*/  bus_mode; int /*<<< orphan*/  version; } ;
struct davinci_mmc_config {int /*<<< orphan*/  (* set_power ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 scalar_t__ DAVINCI_MMCARGHL ; 
 scalar_t__ DAVINCI_MMCCMD ; 
 scalar_t__ DAVINCI_MMCCTL ; 
 scalar_t__ DAVINCI_MMCST0 ; 
 int MMCCMD_INITCK ; 
 int MMCCTL_WIDTH_4_BIT ; 
 int MMCCTL_WIDTH_8_BIT ; 
 int MMCST0_RSPDNE ; 
#define  MMC_BUS_WIDTH_1 132 
#define  MMC_BUS_WIDTH_4 131 
#define  MMC_BUS_WIDTH_8 130 
 int /*<<< orphan*/  MMC_CTLR_VERSION_2 ; 
#define  MMC_POWER_OFF 129 
#define  MMC_POWER_UP 128 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mmc_davinci_host* FUNC5 (struct mmc_host*) ; 
 unsigned long FUNC6 (int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 struct platform_device* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct mmc_davinci_host *host = FUNC5(mmc);
	struct platform_device *pdev = FUNC11(mmc->parent);
	struct davinci_mmc_config *config = pdev->dev.platform_data;

	FUNC2(FUNC4(host->mmc),
		"clock %dHz busmode %d powermode %d Vdd %04x\n",
		ios->clock, ios->bus_mode, ios->power_mode,
		ios->vdd);

	switch (ios->power_mode) {
	case MMC_POWER_OFF:
		if (config && config->set_power)
			config->set_power(pdev->id, false);
		break;
	case MMC_POWER_UP:
		if (config && config->set_power)
			config->set_power(pdev->id, true);
		break;
	}

	switch (ios->bus_width) {
	case MMC_BUS_WIDTH_8:
		FUNC2(FUNC4(host->mmc), "Enabling 8 bit mode\n");
		FUNC12((FUNC7(host->base + DAVINCI_MMCCTL) &
			~MMCCTL_WIDTH_4_BIT) | MMCCTL_WIDTH_8_BIT,
			host->base + DAVINCI_MMCCTL);
		break;
	case MMC_BUS_WIDTH_4:
		FUNC2(FUNC4(host->mmc), "Enabling 4 bit mode\n");
		if (host->version == MMC_CTLR_VERSION_2)
			FUNC12((FUNC7(host->base + DAVINCI_MMCCTL) &
				~MMCCTL_WIDTH_8_BIT) | MMCCTL_WIDTH_4_BIT,
				host->base + DAVINCI_MMCCTL);
		else
			FUNC12(FUNC7(host->base + DAVINCI_MMCCTL) |
				MMCCTL_WIDTH_4_BIT,
				host->base + DAVINCI_MMCCTL);
		break;
	case MMC_BUS_WIDTH_1:
		FUNC2(FUNC4(host->mmc), "Enabling 1 bit mode\n");
		if (host->version == MMC_CTLR_VERSION_2)
			FUNC12(FUNC7(host->base + DAVINCI_MMCCTL) &
				~(MMCCTL_WIDTH_8_BIT | MMCCTL_WIDTH_4_BIT),
				host->base + DAVINCI_MMCCTL);
		else
			FUNC12(FUNC7(host->base + DAVINCI_MMCCTL) &
				~MMCCTL_WIDTH_4_BIT,
				host->base + DAVINCI_MMCCTL);
		break;
	}

	FUNC0(mmc, ios);

	host->bus_mode = ios->bus_mode;
	if (ios->power_mode == MMC_POWER_UP) {
		unsigned long timeout = jiffies + FUNC6(50);
		bool lose = true;

		/* Send clock cycles, poll completion */
		FUNC12(0, host->base + DAVINCI_MMCARGHL);
		FUNC12(MMCCMD_INITCK, host->base + DAVINCI_MMCCMD);
		while (FUNC10(jiffies, timeout)) {
			u32 tmp = FUNC7(host->base + DAVINCI_MMCST0);

			if (tmp & MMCST0_RSPDNE) {
				lose = false;
				break;
			}
			FUNC1();
		}
		if (lose)
			FUNC3(FUNC4(host->mmc), "powerup timeout\n");
	}

	/* FIXME on power OFF, reset things ... */
}