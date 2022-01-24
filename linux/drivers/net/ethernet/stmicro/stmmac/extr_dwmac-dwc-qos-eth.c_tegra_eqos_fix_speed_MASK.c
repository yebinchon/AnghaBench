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
typedef  int u32 ;
struct tegra_eqos {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk_tx; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AUTO_CAL_CONFIG ; 
 int AUTO_CAL_CONFIG_ENABLE ; 
 int AUTO_CAL_CONFIG_START ; 
 scalar_t__ AUTO_CAL_STATUS ; 
 int AUTO_CAL_STATUS_ACTIVE ; 
 scalar_t__ SDMEMCOMPPADCTRL ; 
 int SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void *priv, unsigned int speed)
{
	struct tegra_eqos *eqos = priv;
	unsigned long rate = 125000000;
	bool needs_calibration = false;
	u32 value;
	int err;

	switch (speed) {
	case SPEED_1000:
		needs_calibration = true;
		rate = 125000000;
		break;

	case SPEED_100:
		needs_calibration = true;
		rate = 25000000;
		break;

	case SPEED_10:
		rate = 2500000;
		break;

	default:
		FUNC1(eqos->dev, "invalid speed %u\n", speed);
		break;
	}

	if (needs_calibration) {
		/* calibrate */
		value = FUNC2(eqos->regs + SDMEMCOMPPADCTRL);
		value |= SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD;
		FUNC5(value, eqos->regs + SDMEMCOMPPADCTRL);

		FUNC4(1);

		value = FUNC2(eqos->regs + AUTO_CAL_CONFIG);
		value |= AUTO_CAL_CONFIG_START | AUTO_CAL_CONFIG_ENABLE;
		FUNC5(value, eqos->regs + AUTO_CAL_CONFIG);

		err = FUNC3(eqos->regs + AUTO_CAL_STATUS,
						value,
						value & AUTO_CAL_STATUS_ACTIVE,
						1, 10);
		if (err < 0) {
			FUNC1(eqos->dev, "calibration did not start\n");
			goto failed;
		}

		err = FUNC3(eqos->regs + AUTO_CAL_STATUS,
						value,
						(value & AUTO_CAL_STATUS_ACTIVE) == 0,
						20, 200);
		if (err < 0) {
			FUNC1(eqos->dev, "calibration didn't finish\n");
			goto failed;
		}

	failed:
		value = FUNC2(eqos->regs + SDMEMCOMPPADCTRL);
		value &= ~SDMEMCOMPPADCTRL_PAD_E_INPUT_OR_E_PWRD;
		FUNC5(value, eqos->regs + SDMEMCOMPPADCTRL);
	} else {
		value = FUNC2(eqos->regs + AUTO_CAL_CONFIG);
		value &= ~AUTO_CAL_CONFIG_ENABLE;
		FUNC5(value, eqos->regs + AUTO_CAL_CONFIG);
	}

	err = FUNC0(eqos->clk_tx, rate);
	if (err < 0)
		FUNC1(eqos->dev, "failed to set TX rate: %d\n", err);
}