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
struct sdhci_tegra {int enable_hwcq; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sdhci_tegra* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct sdhci_tegra *tegra_host = FUNC1(pltfm_host);

	if (FUNC0(host->mmc->parent, "supports-cqe"))
		tegra_host->enable_hwcq = true;
	else
		tegra_host->enable_hwcq = false;

	FUNC3(host);
	FUNC4(host);
}