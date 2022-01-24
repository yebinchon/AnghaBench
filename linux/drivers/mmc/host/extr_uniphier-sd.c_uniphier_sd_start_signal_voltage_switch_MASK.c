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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_sd_priv {int /*<<< orphan*/  pinctrl; struct pinctrl_state* pinstate_uhs; struct pinctrl_state* pinstate_default; } ;
struct tmio_mmc_host {scalar_t__ ctl; } ;
struct pinctrl_state {int dummy; } ;
struct mmc_ios {int signal_voltage; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  MMC_SIGNAL_VOLTAGE_180 129 
#define  MMC_SIGNAL_VOLTAGE_330 128 
 scalar_t__ UNIPHIER_SD_VOLT ; 
 int /*<<< orphan*/  UNIPHIER_SD_VOLT_180 ; 
 int /*<<< orphan*/  UNIPHIER_SD_VOLT_330 ; 
 int /*<<< orphan*/  UNIPHIER_SD_VOLT_MASK ; 
 struct tmio_mmc_host* FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct uniphier_sd_priv* FUNC4 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mmc_host *mmc,
						   struct mmc_ios *ios)
{
	struct tmio_mmc_host *host = FUNC1(mmc);
	struct uniphier_sd_priv *priv = FUNC4(host);
	struct pinctrl_state *pinstate;
	u32 val, tmp;

	switch (ios->signal_voltage) {
	case MMC_SIGNAL_VOLTAGE_330:
		val = UNIPHIER_SD_VOLT_330;
		pinstate = priv->pinstate_default;
		break;
	case MMC_SIGNAL_VOLTAGE_180:
		val = UNIPHIER_SD_VOLT_180;
		pinstate = priv->pinstate_uhs;
		break;
	default:
		return -ENOTSUPP;
	}

	tmp = FUNC3(host->ctl + UNIPHIER_SD_VOLT);
	tmp &= ~UNIPHIER_SD_VOLT_MASK;
	tmp |= FUNC0(UNIPHIER_SD_VOLT_MASK, val);
	FUNC5(tmp, host->ctl + UNIPHIER_SD_VOLT);

	FUNC2(priv->pinctrl, pinstate);

	return 0;
}