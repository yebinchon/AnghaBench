#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tmio_mmc_host {int /*<<< orphan*/  mmc; } ;
struct renesas_sdhi {struct pinctrl_state* pinctrl; struct pinctrl_state* pins_uhs; struct pinctrl_state* pins_default; } ;
struct pinctrl_state {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
#define  MMC_SIGNAL_VOLTAGE_180 129 
#define  MMC_SIGNAL_VOLTAGE_330 128 
 struct renesas_sdhi* FUNC1 (struct tmio_mmc_host*) ; 
 struct tmio_mmc_host* FUNC2 (struct mmc_host*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mmc_ios*) ; 
 int FUNC4 (struct pinctrl_state*,struct pinctrl_state*) ; 

__attribute__((used)) static int FUNC5(struct mmc_host *mmc,
						    struct mmc_ios *ios)
{
	struct tmio_mmc_host *host = FUNC2(mmc);
	struct renesas_sdhi *priv = FUNC1(host);
	struct pinctrl_state *pin_state;
	int ret;

	switch (ios->signal_voltage) {
	case MMC_SIGNAL_VOLTAGE_330:
		pin_state = priv->pins_default;
		break;
	case MMC_SIGNAL_VOLTAGE_180:
		pin_state = priv->pins_uhs;
		break;
	default:
		return -EINVAL;
	}

	/*
	 * If anything is missing, assume signal voltage is fixed at
	 * 3.3V and succeed/fail accordingly.
	 */
	if (FUNC0(priv->pinctrl) || FUNC0(pin_state))
		return ios->signal_voltage ==
			MMC_SIGNAL_VOLTAGE_330 ? 0 : -EINVAL;

	ret = FUNC3(host->mmc, ios);
	if (ret)
		return ret;

	return FUNC4(priv->pinctrl, pin_state);
}