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
struct xenon_priv {struct xenon_emmc_phy_params* phy_params; } ;
struct xenon_emmc_phy_params {int tun_step_divider; int nr_tun_times; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ clock; int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MMC_HIGH_52_MAX_DTR ; 
 int /*<<< orphan*/  XENON_SLOT_DLL_CUR_DLY_VAL ; 
 int /*<<< orphan*/  XENON_SLOT_OP_STATUS_CTRL ; 
 int XENON_TUNING_STEP_MASK ; 
 int XENON_TUNING_STEP_SHIFT ; 
 int XENON_TUN_CONSECUTIVE_TIMES_MASK ; 
 int XENON_TUN_CONSECUTIVE_TIMES_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xenon_priv* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static int FUNC8(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct xenon_priv *priv = FUNC2(pltfm_host);
	struct xenon_emmc_phy_params *params = priv->phy_params;
	u32 reg, tuning_step;
	int ret;

	if (host->clock <= MMC_HIGH_52_MAX_DTR)
		return -EINVAL;

	ret = FUNC7(host);
	if (ret)
		return ret;

	/* Achieve TUNING_STEP with HW DLL help */
	reg = FUNC4(host, XENON_SLOT_DLL_CUR_DLY_VAL);
	tuning_step = reg / params->tun_step_divider;
	if (FUNC6(tuning_step > XENON_TUNING_STEP_MASK)) {
		FUNC0(FUNC1(host->mmc),
			 "HS200 TUNING_STEP %d is larger than MAX value\n",
			 tuning_step);
		tuning_step = XENON_TUNING_STEP_MASK;
	}

	/* Set TUNING_STEP for later tuning */
	reg = FUNC4(host, XENON_SLOT_OP_STATUS_CTRL);
	reg &= ~(XENON_TUN_CONSECUTIVE_TIMES_MASK <<
		 XENON_TUN_CONSECUTIVE_TIMES_SHIFT);
	reg |= (params->nr_tun_times << XENON_TUN_CONSECUTIVE_TIMES_SHIFT);
	reg &= ~(XENON_TUNING_STEP_MASK << XENON_TUNING_STEP_SHIFT);
	reg |= (tuning_step << XENON_TUNING_STEP_SHIFT);
	FUNC5(host, reg, XENON_SLOT_OP_STATUS_CTRL);

	return 0;
}