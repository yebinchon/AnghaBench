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
struct xenon_priv {scalar_t__ phy_type; int /*<<< orphan*/  phy_params; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ EMMC_5_1_PHY ; 
 int /*<<< orphan*/  NR_PHY_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_types ; 
 struct xenon_priv* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 
 int FUNC5 (struct sdhci_host*) ; 
 int FUNC6 (struct sdhci_host*,struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device_node *np, struct sdhci_host *host,
			 const char *phy_name)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct xenon_priv *priv = FUNC3(pltfm_host);
	int ret;

	priv->phy_type = FUNC1(phy_types, NR_PHY_TYPES, phy_name);
	if (priv->phy_type < 0) {
		FUNC0(FUNC2(host->mmc),
			"Unable to determine PHY name %s. Use default eMMC 5.1 PHY\n",
			phy_name);
		priv->phy_type = EMMC_5_1_PHY;
	}

	ret = FUNC5(host);
	if (ret)
		return ret;

	return FUNC6(host, np, priv->phy_params);
}