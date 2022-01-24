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
struct sdhci_tegra {int default_tap; int default_trim; int dqs_trim; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 struct sdhci_tegra* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_tegra *tegra_host = FUNC1(pltfm_host);
	int err;

	err = FUNC0(host->mmc->parent, "nvidia,default-tap",
				       &tegra_host->default_tap);
	if (err)
		tegra_host->default_tap = 0;

	err = FUNC0(host->mmc->parent, "nvidia,default-trim",
				       &tegra_host->default_trim);
	if (err)
		tegra_host->default_trim = 0;

	err = FUNC0(host->mmc->parent, "nvidia,dqs-trim",
				       &tegra_host->dqs_trim);
	if (err)
		tegra_host->dqs_trim = 0x11;
}