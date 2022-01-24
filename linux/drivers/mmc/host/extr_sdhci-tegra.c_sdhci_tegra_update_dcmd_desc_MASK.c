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
typedef  int /*<<< orphan*/  u64 ;
struct sdhci_tegra_soc_data {int nvquirks; } ;
struct sdhci_tegra {struct sdhci_tegra_soc_data* soc_data; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MMC_RSP_R1B ; 
 int NVQUIRK_CQHCI_DCMD_R1B_CMD_TIMING ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 struct sdhci_tegra* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc,
					 struct mmc_request *mrq, u64 *data)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(FUNC1(mmc));
	struct sdhci_tegra *tegra_host = FUNC2(pltfm_host);
	const struct sdhci_tegra_soc_data *soc_data = tegra_host->soc_data;

	if (soc_data->nvquirks & NVQUIRK_CQHCI_DCMD_R1B_CMD_TIMING &&
	    mrq->cmd->flags & MMC_RSP_R1B)
		*data |= FUNC0(1);
}