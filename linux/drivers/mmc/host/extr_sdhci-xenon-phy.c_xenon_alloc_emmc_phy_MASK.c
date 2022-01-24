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
struct xenon_priv {scalar_t__ phy_type; int /*<<< orphan*/ * emmc_phy_regs; struct xenon_emmc_phy_params* phy_params; } ;
struct xenon_emmc_phy_params {int dummy; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 scalar_t__ EMMC_5_0_PHY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct xenon_emmc_phy_params* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xenon_priv* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  xenon_emmc_5_0_phy_regs ; 
 int /*<<< orphan*/  xenon_emmc_5_1_phy_regs ; 

__attribute__((used)) static int FUNC4(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct xenon_priv *priv = FUNC2(pltfm_host);
	struct xenon_emmc_phy_params *params;

	params = FUNC0(FUNC1(host->mmc), sizeof(*params), GFP_KERNEL);
	if (!params)
		return -ENOMEM;

	priv->phy_params = params;
	if (priv->phy_type == EMMC_5_0_PHY)
		priv->emmc_phy_regs = &xenon_emmc_5_0_phy_regs;
	else
		priv->emmc_phy_regs = &xenon_emmc_5_1_phy_regs;

	return 0;
}