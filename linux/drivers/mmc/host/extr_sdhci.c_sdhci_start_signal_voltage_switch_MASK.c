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
typedef  int u16 ;
struct sdhci_host {scalar_t__ version; int flags; TYPE_1__* ops; } ;
struct mmc_ios {int signal_voltage; } ;
struct TYPE_4__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_2__ supply; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* voltage_switch ) (struct sdhci_host*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  MMC_SIGNAL_VOLTAGE_120 130 
#define  MMC_SIGNAL_VOLTAGE_180 129 
#define  MMC_SIGNAL_VOLTAGE_330 128 
 int SDHCI_CTRL_VDD_180 ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int SDHCI_SIGNALING_120 ; 
 int SDHCI_SIGNALING_180 ; 
 int SDHCI_SIGNALING_330 ; 
 scalar_t__ SDHCI_SPEC_300 ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct sdhci_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

int FUNC9(struct mmc_host *mmc,
				      struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC2(mmc);
	u16 ctrl;
	int ret;

	/*
	 * Signal Voltage Switching is only applicable for Host Controllers
	 * v3.00 and above.
	 */
	if (host->version < SDHCI_SPEC_300)
		return 0;

	ctrl = FUNC5(host, SDHCI_HOST_CONTROL2);

	switch (ios->signal_voltage) {
	case MMC_SIGNAL_VOLTAGE_330:
		if (!(host->flags & SDHCI_SIGNALING_330))
			return -EINVAL;
		/* Set 1.8V Signal Enable in the Host Control2 register to 0 */
		ctrl &= ~SDHCI_CTRL_VDD_180;
		FUNC6(host, ctrl, SDHCI_HOST_CONTROL2);

		if (!FUNC0(mmc->supply.vqmmc)) {
			ret = FUNC3(mmc, ios);
			if (ret) {
				FUNC4("%s: Switching to 3.3V signalling voltage failed\n",
					FUNC1(mmc));
				return -EIO;
			}
		}
		/* Wait for 5ms */
		FUNC8(5000, 5500);

		/* 3.3V regulator output should be stable within 5 ms */
		ctrl = FUNC5(host, SDHCI_HOST_CONTROL2);
		if (!(ctrl & SDHCI_CTRL_VDD_180))
			return 0;

		FUNC4("%s: 3.3V regulator output did not became stable\n",
			FUNC1(mmc));

		return -EAGAIN;
	case MMC_SIGNAL_VOLTAGE_180:
		if (!(host->flags & SDHCI_SIGNALING_180))
			return -EINVAL;
		if (!FUNC0(mmc->supply.vqmmc)) {
			ret = FUNC3(mmc, ios);
			if (ret) {
				FUNC4("%s: Switching to 1.8V signalling voltage failed\n",
					FUNC1(mmc));
				return -EIO;
			}
		}

		/*
		 * Enable 1.8V Signal Enable in the Host Control2
		 * register
		 */
		ctrl |= SDHCI_CTRL_VDD_180;
		FUNC6(host, ctrl, SDHCI_HOST_CONTROL2);

		/* Some controller need to do more when switching */
		if (host->ops->voltage_switch)
			host->ops->voltage_switch(host);

		/* 1.8V regulator output should be stable within 5 ms */
		ctrl = FUNC5(host, SDHCI_HOST_CONTROL2);
		if (ctrl & SDHCI_CTRL_VDD_180)
			return 0;

		FUNC4("%s: 1.8V regulator output did not became stable\n",
			FUNC1(mmc));

		return -EAGAIN;
	case MMC_SIGNAL_VOLTAGE_120:
		if (!(host->flags & SDHCI_SIGNALING_120))
			return -EINVAL;
		if (!FUNC0(mmc->supply.vqmmc)) {
			ret = FUNC3(mmc, ios);
			if (ret) {
				FUNC4("%s: Switching to 1.2V signalling voltage failed\n",
					FUNC1(mmc));
				return -EIO;
			}
		}
		return 0;
	default:
		/* No signal voltage switch required */
		return 0;
	}
}