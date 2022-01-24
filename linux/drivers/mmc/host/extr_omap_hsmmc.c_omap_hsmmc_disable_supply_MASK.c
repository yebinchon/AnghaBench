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
struct omap_hsmmc_host {scalar_t__ vqmmc_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct omap_hsmmc_host* FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mmc_host *mmc)
{
	int ret;
	int status;
	struct omap_hsmmc_host *host = FUNC3(mmc);

	if (!FUNC0(mmc->supply.vqmmc) && host->vqmmc_enabled) {
		ret = FUNC5(mmc->supply.vqmmc);
		if (ret) {
			FUNC1(FUNC2(mmc), "vmmc_aux reg disable failed\n");
			return ret;
		}
		host->vqmmc_enabled = 0;
	}

	if (!FUNC0(mmc->supply.vmmc)) {
		ret = FUNC4(mmc, mmc->supply.vmmc, 0);
		if (ret)
			goto err_set_ocr;
	}

	return 0;

err_set_ocr:
	if (!FUNC0(mmc->supply.vqmmc)) {
		status = FUNC6(mmc->supply.vqmmc);
		if (status)
			FUNC1(FUNC2(mmc), "vmmc_aux re-enable failed\n");
	}

	return ret;
}