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
typedef  int /*<<< orphan*/  u32 ;
struct xenon_priv {scalar_t__ phy_type; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ timing; scalar_t__ clock; TYPE_2__* mmc; } ;
struct TYPE_3__ {scalar_t__ enhanced_strobe; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;

/* Variables and functions */
 scalar_t__ EMMC_5_0_PHY ; 
 scalar_t__ MMC_HIGH_52_MAX_DTR ; 
 scalar_t__ MMC_TIMING_MMC_HS400 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  XENON_EMMC5_1_FC_QSP_PD ; 
 int /*<<< orphan*/  XENON_EMMC5_1_FC_QSP_PU ; 
 int /*<<< orphan*/  XENON_EMMC5_FC_QSP_PD ; 
 int /*<<< orphan*/  XENON_EMMC5_FC_QSP_PU ; 
 int /*<<< orphan*/  XENON_EMMC_5_0_PHY_PAD_CONTROL ; 
 int /*<<< orphan*/  XENON_EMMC_PHY_PAD_CONTROL1 ; 
 int /*<<< orphan*/  XENON_ENABLE_DATA_STROBE ; 
 int /*<<< orphan*/  XENON_ENABLE_RESP_STROBE ; 
 int /*<<< orphan*/  XENON_SLOT_EMMC_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct xenon_priv* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC8(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct xenon_priv *priv = FUNC3(pltfm_host);
	u32 reg;

	if (FUNC0(host->timing != MMC_TIMING_MMC_HS400))
		return;

	if (host->clock <= MMC_HIGH_52_MAX_DTR)
		return;

	FUNC1(FUNC2(host->mmc), "starts HS400 strobe delay adjustment\n");

	FUNC7(host);

	/* Enable SDHC Data Strobe */
	reg = FUNC5(host, XENON_SLOT_EMMC_CTRL);
	reg |= XENON_ENABLE_DATA_STROBE;
	/*
	 * Enable SDHC Enhanced Strobe if supported
	 * Xenon Enhanced Strobe should be enabled only when
	 * 1. card is in HS400 mode and
	 * 2. SDCLK is higher than 52MHz
	 * 3. DLL is enabled
	 */
	if (host->mmc->ios.enhanced_strobe)
		reg |= XENON_ENABLE_RESP_STROBE;
	FUNC6(host, reg, XENON_SLOT_EMMC_CTRL);

	/* Set Data Strobe Pull down */
	if (priv->phy_type == EMMC_5_0_PHY) {
		reg = FUNC5(host, XENON_EMMC_5_0_PHY_PAD_CONTROL);
		reg |= XENON_EMMC5_FC_QSP_PD;
		reg &= ~XENON_EMMC5_FC_QSP_PU;
		FUNC6(host, reg, XENON_EMMC_5_0_PHY_PAD_CONTROL);
	} else {
		reg = FUNC5(host, XENON_EMMC_PHY_PAD_CONTROL1);
		reg |= XENON_EMMC5_1_FC_QSP_PD;
		reg &= ~XENON_EMMC5_1_FC_QSP_PU;
		FUNC6(host, reg, XENON_EMMC_PHY_PAD_CONTROL1);
	}
}