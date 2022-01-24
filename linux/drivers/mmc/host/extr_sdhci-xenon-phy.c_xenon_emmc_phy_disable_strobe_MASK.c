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
struct xenon_priv {scalar_t__ phy_type; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ EMMC_5_0_PHY ; 
 int XENON_EMMC5_1_FC_QSP_PD ; 
 int XENON_EMMC5_1_FC_QSP_PU ; 
 int XENON_EMMC5_FC_QSP_PD ; 
 int XENON_EMMC5_FC_QSP_PU ; 
 int /*<<< orphan*/  XENON_EMMC_5_0_PHY_PAD_CONTROL ; 
 int /*<<< orphan*/  XENON_EMMC_PHY_PAD_CONTROL1 ; 
 int XENON_ENABLE_DATA_STROBE ; 
 int XENON_ENABLE_RESP_STROBE ; 
 int /*<<< orphan*/  XENON_SLOT_EMMC_CTRL ; 
 struct xenon_priv* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct xenon_priv *priv = FUNC0(pltfm_host);
	u32 reg;

	/* Disable both SDHC Data Strobe and Enhanced Strobe */
	reg = FUNC2(host, XENON_SLOT_EMMC_CTRL);
	reg &= ~(XENON_ENABLE_DATA_STROBE | XENON_ENABLE_RESP_STROBE);
	FUNC3(host, reg, XENON_SLOT_EMMC_CTRL);

	/* Clear Strobe line Pull down or Pull up */
	if (priv->phy_type == EMMC_5_0_PHY) {
		reg = FUNC2(host, XENON_EMMC_5_0_PHY_PAD_CONTROL);
		reg &= ~(XENON_EMMC5_FC_QSP_PD | XENON_EMMC5_FC_QSP_PU);
		FUNC3(host, reg, XENON_EMMC_5_0_PHY_PAD_CONTROL);
	} else {
		reg = FUNC2(host, XENON_EMMC_PHY_PAD_CONTROL1);
		reg &= ~(XENON_EMMC5_1_FC_QSP_PD | XENON_EMMC5_1_FC_QSP_PU);
		FUNC3(host, reg, XENON_EMMC_PHY_PAD_CONTROL1);
	}
}