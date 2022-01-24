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
struct omap_hsmmc_host {int /*<<< orphan*/  dev; int /*<<< orphan*/  pbias; struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  vqmmc; int /*<<< orphan*/  vmmc; } ;
struct mmc_host {TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct omap_hsmmc_host *host)
{
	struct mmc_host *mmc = host->mmc;
	int ret;

	/*
	 * disable regulators enabled during boot and get the usecount
	 * right so that regulators can be enabled/disabled by checking
	 * the return value of regulator_is_enabled
	 */
	ret = FUNC1(mmc->supply.vmmc);
	if (ret) {
		FUNC0(host->dev, "fail to disable boot enabled vmmc reg\n");
		return ret;
	}

	ret = FUNC1(mmc->supply.vqmmc);
	if (ret) {
		FUNC0(host->dev,
			"fail to disable boot enabled vmmc_aux reg\n");
		return ret;
	}

	ret = FUNC1(host->pbias);
	if (ret) {
		FUNC0(host->dev,
			"failed to disable boot enabled pbias reg\n");
		return ret;
	}

	return 0;
}