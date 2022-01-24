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
struct sdhci_host {int dummy; } ;
struct mmc_ios {int /*<<< orphan*/  signal_voltage; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdhci_host* FUNC1 (struct mmc_host*) ; 
 int FUNC2 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc,
					     struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC1(mmc);

	/*
	 * Before SD/SDIO set signal voltage, SD bus clock should be
	 * disabled. However, sdhci_set_clock will also disable the Internal
	 * clock in mmc_set_signal_voltage().
	 * If Internal clock is disabled, the 3.3V/1.8V bit can not be updated.
	 * Thus here manually enable internal clock.
	 *
	 * After switch completes, it is unnecessary to disable internal clock,
	 * since keeping internal clock active obeys SD spec.
	 */
	FUNC3(host);

	FUNC4(host, ios->signal_voltage);

	/*
	 * If Vqmmc is fixed on platform, vqmmc regulator should be unavailable.
	 * Thus SDHCI_CTRL_VDD_180 bit might not work then.
	 * Skip the standard voltage switch to avoid any issue.
	 */
	if (FUNC0(mmc->supply.vqmmc) == -ENODEV)
		return 0;

	return FUNC2(mmc, ios);
}