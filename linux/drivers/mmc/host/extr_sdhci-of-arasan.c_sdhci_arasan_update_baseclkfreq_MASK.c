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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_pltfm_host {int /*<<< orphan*/  clk; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct sdhci_arasan_soc_ctl_map {int /*<<< orphan*/  baseclkfreq; } ;
struct sdhci_arasan_data {int /*<<< orphan*/  soc_ctl_base; struct sdhci_arasan_soc_ctl_map* soc_ctl_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sdhci_arasan_data* FUNC5 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC6 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC6(host);
	struct sdhci_arasan_data *sdhci_arasan = FUNC5(pltfm_host);
	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map =
		sdhci_arasan->soc_ctl_map;
	u32 mhz = FUNC0(FUNC1(pltfm_host->clk), 1000000);

	/* Having a map is optional */
	if (!soc_ctl_map)
		return;

	/* If we have a map, we expect to have a syscon */
	if (!sdhci_arasan->soc_ctl_base) {
		FUNC3("%s: Have regmap, but no soc-ctl-syscon\n",
			FUNC2(host->mmc));
		return;
	}

	FUNC4(host, &soc_ctl_map->baseclkfreq, mhz);
}