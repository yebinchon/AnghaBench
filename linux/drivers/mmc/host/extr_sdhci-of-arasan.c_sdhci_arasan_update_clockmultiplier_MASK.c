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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct sdhci_arasan_soc_ctl_map {int /*<<< orphan*/  clockmultiplier; } ;
struct sdhci_arasan_data {int /*<<< orphan*/  soc_ctl_base; struct sdhci_arasan_soc_ctl_map* soc_ctl_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sdhci_arasan_data* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host,
						u32 value)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct sdhci_arasan_data *sdhci_arasan = FUNC3(pltfm_host);
	const struct sdhci_arasan_soc_ctl_map *soc_ctl_map =
		sdhci_arasan->soc_ctl_map;

	/* Having a map is optional */
	if (!soc_ctl_map)
		return;

	/* If we have a map, we expect to have a syscon */
	if (!sdhci_arasan->soc_ctl_base) {
		FUNC1("%s: Have regmap, but no soc-ctl-syscon\n",
			FUNC0(host->mmc));
		return;
	}

	FUNC2(host, &soc_ctl_map->clockmultiplier, value);
}