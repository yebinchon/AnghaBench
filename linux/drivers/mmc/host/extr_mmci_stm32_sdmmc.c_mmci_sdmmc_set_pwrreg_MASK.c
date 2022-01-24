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
struct mmci_host {unsigned int pwr_reg_add; scalar_t__ base; TYPE_1__* variant; int /*<<< orphan*/  rst; TYPE_2__* mmc; } ;
struct mmc_ios {scalar_t__ power_mode; } ;
struct TYPE_4__ {struct mmc_ios ios; } ;
struct TYPE_3__ {int start_err; } ;

/* Variables and functions */
 int MCI_IRQENABLE ; 
 unsigned int MCI_PWR_OFF ; 
 unsigned int MCI_PWR_ON ; 
 unsigned int MCI_STM32_PWR_CYC ; 
 scalar_t__ MMCIMASK0 ; 
 scalar_t__ MMC_POWER_OFF ; 
 scalar_t__ MMC_POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mmci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mmci_host *host, unsigned int pwr)
{
	struct mmc_ios ios = host->mmc->ios;

	pwr = host->pwr_reg_add;

	if (ios.power_mode == MMC_POWER_OFF) {
		/* Only a reset could power-off sdmmc */
		FUNC2(host->rst);
		FUNC4(2);
		FUNC3(host->rst);

		/*
		 * Set the SDMMC in Power-cycle state.
		 * This will make that the SDMMC_D[7:0], SDMMC_CMD and SDMMC_CK
		 * are driven low, to prevent the Card from being supplied
		 * through the signal lines.
		 */
		FUNC1(host, MCI_STM32_PWR_CYC | pwr);
	} else if (ios.power_mode == MMC_POWER_ON) {
		/*
		 * After power-off (reset): the irq mask defined in probe
		 * functionis lost
		 * ault irq mask (probe) must be activated
		 */
		FUNC5(MCI_IRQENABLE | host->variant->start_err,
		       host->base + MMCIMASK0);

		/*
		 * After a power-cycle state, we must set the SDMMC in
		 * Power-off. The SDMMC_D[7:0], SDMMC_CMD and SDMMC_CK are
		 * driven high. Then we can set the SDMMC to Power-on state
		 */
		FUNC1(host, MCI_PWR_OFF | pwr);
		FUNC0(1);
		FUNC1(host, MCI_PWR_ON | pwr);
	}
}