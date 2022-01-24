#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {void* pbias; TYPE_3__* dev; struct mmc_host* mmc; } ;
struct TYPE_6__ {void* vqmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct TYPE_7__ {scalar_t__ no_regulator_off_init; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 void* FUNC4 (TYPE_3__*,char*) ; 
 TYPE_2__* FUNC5 (struct omap_hsmmc_host*) ; 
 int FUNC6 (struct mmc_host*) ; 
 int FUNC7 (struct omap_hsmmc_host*) ; 

__attribute__((used)) static int FUNC8(struct omap_hsmmc_host *host)
{
	int ret;
	struct mmc_host *mmc = host->mmc;


	ret = FUNC6(mmc);
	if (ret)
		return ret;

	/* Allow an aux regulator */
	if (FUNC0(mmc->supply.vqmmc)) {
		mmc->supply.vqmmc = FUNC4(host->dev,
								"vmmc_aux");
		if (FUNC0(mmc->supply.vqmmc)) {
			ret = FUNC1(mmc->supply.vqmmc);
			if ((ret != -ENODEV) && host->dev->of_node)
				return ret;
			FUNC2(host->dev, "unable to get vmmc_aux regulator %ld\n",
				FUNC1(mmc->supply.vqmmc));
		}
	}

	host->pbias = FUNC4(host->dev, "pbias");
	if (FUNC0(host->pbias)) {
		ret = FUNC1(host->pbias);
		if ((ret != -ENODEV) && host->dev->of_node) {
			FUNC3(host->dev,
			"SD card detect fail? enable CONFIG_REGULATOR_PBIAS\n");
			return ret;
		}
		FUNC2(host->dev, "unable to get pbias regulator %ld\n",
			FUNC1(host->pbias));
	}

	/* For eMMC do not power off when not in sleep state */
	if (FUNC5(host)->no_regulator_off_init)
		return 0;

	ret = FUNC7(host);
	if (ret)
		return ret;

	return 0;
}