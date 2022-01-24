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
struct omap_hsmmc_host {int vqmmc_enabled; } ;
struct mmc_ios {int /*<<< orphan*/  vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmmc; int /*<<< orphan*/  vqmmc; } ;
struct mmc_host {TYPE_1__ supply; struct mmc_ios ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct omap_hsmmc_host* FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mmc_host *mmc)
{
	int ret;
	struct omap_hsmmc_host *host = FUNC3(mmc);
	struct mmc_ios *ios = &mmc->ios;

	if (!FUNC0(mmc->supply.vmmc)) {
		ret = FUNC4(mmc, mmc->supply.vmmc, ios->vdd);
		if (ret)
			return ret;
	}

	/* Enable interface voltage rail, if needed */
	if (!FUNC0(mmc->supply.vqmmc) && !host->vqmmc_enabled) {
		ret = FUNC5(mmc->supply.vqmmc);
		if (ret) {
			FUNC1(FUNC2(mmc), "vmmc_aux reg enable failed\n");
			goto err_vqmmc;
		}
		host->vqmmc_enabled = 1;
	}

	return 0;

err_vqmmc:
	if (!FUNC0(mmc->supply.vmmc))
		FUNC4(mmc, mmc->supply.vmmc, 0);

	return ret;
}