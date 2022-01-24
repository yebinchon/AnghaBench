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
struct sdhci_sprd_host {int /*<<< orphan*/  pins_default; int /*<<< orphan*/  pinctrl; int /*<<< orphan*/  pins_uhs; } ;
struct sdhci_host {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  MMC_SIGNAL_VOLTAGE_180 129 
#define  MMC_SIGNAL_VOLTAGE_330 128 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 struct sdhci_sprd_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct sdhci_host* FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,struct mmc_ios*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct sdhci_host *host = FUNC3(mmc);
	struct sdhci_sprd_host *sprd_host = FUNC1(host);
	int ret;

	if (!FUNC0(mmc->supply.vqmmc)) {
		ret = FUNC4(mmc, ios);
		if (ret) {
			FUNC6("%s: Switching signalling voltage failed\n",
			       FUNC2(mmc));
			return ret;
		}
	}

	if (FUNC0(sprd_host->pinctrl))
		return 0;

	switch (ios->signal_voltage) {
	case MMC_SIGNAL_VOLTAGE_180:
		ret = FUNC5(sprd_host->pinctrl,
					   sprd_host->pins_uhs);
		if (ret) {
			FUNC6("%s: failed to select uhs pin state\n",
			       FUNC2(mmc));
			return ret;
		}
		break;

	default:
		/* fall-through */
	case MMC_SIGNAL_VOLTAGE_330:
		ret = FUNC5(sprd_host->pinctrl,
					   sprd_host->pins_default);
		if (ret) {
			FUNC6("%s: failed to select default pin state\n",
			       FUNC2(mmc));
			return ret;
		}
		break;
	}

	/* Wait for 300 ~ 500 us for pin state stable */
	FUNC8(300, 500);
	FUNC7(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);

	return 0;
}