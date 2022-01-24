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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {unsigned int clk_rate; TYPE_1__* bulk_clks; } ;
struct sdhci_host {TYPE_2__* mmc; } ;
struct mmc_ios {int /*<<< orphan*/  timing; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {struct mmc_ios ios; } ;
struct TYPE_3__ {struct clk* clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned int FUNC3 (struct sdhci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct sdhci_msm_host* FUNC6 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC7 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC8(struct sdhci_host *host,
					    unsigned int clock)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC7(host);
	struct sdhci_msm_host *msm_host = FUNC6(pltfm_host);
	struct mmc_ios curr_ios = host->mmc->ios;
	struct clk *core_clk = msm_host->bulk_clks[0].clk;
	int rc;

	clock = FUNC3(host, clock);
	rc = FUNC1(core_clk, clock);
	if (rc) {
		FUNC5("%s: Failed to set clock at rate %u at timing %d\n",
		       FUNC2(host->mmc), clock,
		       curr_ios.timing);
		return;
	}
	msm_host->clk_rate = clock;
	FUNC4("%s: Setting clock at rate %lu at timing %d\n",
		 FUNC2(host->mmc), FUNC0(core_clk),
		 curr_ios.timing);
}