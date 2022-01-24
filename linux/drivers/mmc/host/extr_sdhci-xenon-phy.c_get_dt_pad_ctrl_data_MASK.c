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
struct TYPE_2__ {int /*<<< orphan*/  pad_type; int /*<<< orphan*/  reg; int /*<<< orphan*/  set_soc_pad; } ;
struct xenon_emmc_phy_params {TYPE_1__ pad_ctrl; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct resource {int dummy; } ;
typedef  char const device_node ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOC_PAD_FIXED_1_8V ; 
 int /*<<< orphan*/  SOC_PAD_SD ; 
 int /*<<< orphan*/  armada_3700_soc_pad_voltage_set ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int,struct resource*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int FUNC7 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(struct sdhci_host *host,
				struct device_node *np,
				struct xenon_emmc_phy_params *params)
{
	int ret = 0;
	const char *name;
	struct resource iomem;

	if (FUNC6(np, "marvell,armada-3700-sdhci"))
		params->pad_ctrl.set_soc_pad = armada_3700_soc_pad_voltage_set;
	else
		return 0;

	if (FUNC5(np, 1, &iomem)) {
		FUNC2(FUNC4(host->mmc), "Unable to find SoC PAD ctrl register address for %pOFn\n",
			np);
		return -EINVAL;
	}

	params->pad_ctrl.reg = FUNC3(FUNC4(host->mmc),
						     &iomem);
	if (FUNC0(params->pad_ctrl.reg))
		return FUNC1(params->pad_ctrl.reg);

	ret = FUNC7(np, "marvell,pad-type", &name);
	if (ret) {
		FUNC2(FUNC4(host->mmc), "Unable to determine SoC PHY PAD ctrl type\n");
		return ret;
	}
	if (!FUNC8(name, "sd")) {
		params->pad_ctrl.pad_type = SOC_PAD_SD;
	} else if (!FUNC8(name, "fixed-1-8v")) {
		params->pad_ctrl.pad_type = SOC_PAD_FIXED_1_8V;
	} else {
		FUNC2(FUNC4(host->mmc), "Unsupported SoC PHY PAD ctrl type %s\n",
			name);
		return -EINVAL;
	}

	return ret;
}