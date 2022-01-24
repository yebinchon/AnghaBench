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
struct xenon_priv {struct xenon_emmc_phy_params* phy_params; } ;
struct TYPE_2__ {scalar_t__ pad_type; int /*<<< orphan*/  reg; } ;
struct xenon_emmc_phy_params {TYPE_1__ pad_ctrl; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARMADA_3700_SOC_PAD_1_8V ; 
 int /*<<< orphan*/  ARMADA_3700_SOC_PAD_3_3V ; 
 unsigned char MMC_SIGNAL_VOLTAGE_180 ; 
 unsigned char MMC_SIGNAL_VOLTAGE_330 ; 
 scalar_t__ SOC_PAD_FIXED_1_8V ; 
 scalar_t__ SOC_PAD_SD ; 
 struct xenon_priv* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host,
					    unsigned char signal_voltage)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct xenon_priv *priv = FUNC0(pltfm_host);
	struct xenon_emmc_phy_params *params = priv->phy_params;

	if (params->pad_ctrl.pad_type == SOC_PAD_FIXED_1_8V) {
		FUNC2(ARMADA_3700_SOC_PAD_1_8V, params->pad_ctrl.reg);
	} else if (params->pad_ctrl.pad_type == SOC_PAD_SD) {
		if (signal_voltage == MMC_SIGNAL_VOLTAGE_180)
			FUNC2(ARMADA_3700_SOC_PAD_1_8V, params->pad_ctrl.reg);
		else if (signal_voltage == MMC_SIGNAL_VOLTAGE_330)
			FUNC2(ARMADA_3700_SOC_PAD_3_3V, params->pad_ctrl.reg);
	}
}