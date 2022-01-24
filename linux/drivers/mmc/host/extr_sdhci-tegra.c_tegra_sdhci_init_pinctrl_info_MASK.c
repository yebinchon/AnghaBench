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
struct sdhci_tegra {int pad_control_available; int /*<<< orphan*/ * pinctrl_state_1v8; int /*<<< orphan*/ * pinctrl_sdmmc; int /*<<< orphan*/ * pinctrl_state_3v3; int /*<<< orphan*/ * pinctrl_state_3v3_drv; int /*<<< orphan*/ * pinctrl_state_1v8_drv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
					 struct sdhci_tegra *tegra_host)
{
	tegra_host->pinctrl_sdmmc = FUNC4(dev);
	if (FUNC0(tegra_host->pinctrl_sdmmc)) {
		FUNC2(dev, "No pinctrl info, err: %ld\n",
			FUNC1(tegra_host->pinctrl_sdmmc));
		return -1;
	}

	tegra_host->pinctrl_state_1v8_drv = FUNC5(
				tegra_host->pinctrl_sdmmc, "sdmmc-1v8-drv");
	if (FUNC0(tegra_host->pinctrl_state_1v8_drv)) {
		if (FUNC1(tegra_host->pinctrl_state_1v8_drv) == -ENODEV)
			tegra_host->pinctrl_state_1v8_drv = NULL;
	}

	tegra_host->pinctrl_state_3v3_drv = FUNC5(
				tegra_host->pinctrl_sdmmc, "sdmmc-3v3-drv");
	if (FUNC0(tegra_host->pinctrl_state_3v3_drv)) {
		if (FUNC1(tegra_host->pinctrl_state_3v3_drv) == -ENODEV)
			tegra_host->pinctrl_state_3v3_drv = NULL;
	}

	tegra_host->pinctrl_state_3v3 =
		FUNC5(tegra_host->pinctrl_sdmmc, "sdmmc-3v3");
	if (FUNC0(tegra_host->pinctrl_state_3v3)) {
		FUNC3(dev, "Missing 3.3V pad state, err: %ld\n",
			 FUNC1(tegra_host->pinctrl_state_3v3));
		return -1;
	}

	tegra_host->pinctrl_state_1v8 =
		FUNC5(tegra_host->pinctrl_sdmmc, "sdmmc-1v8");
	if (FUNC0(tegra_host->pinctrl_state_1v8)) {
		FUNC3(dev, "Missing 1.8V pad state, err: %ld\n",
			 FUNC1(tegra_host->pinctrl_state_1v8));
		return -1;
	}

	tegra_host->pad_control_available = true;

	return 0;
}