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
struct mmc_ios {scalar_t__ power_mode; int /*<<< orphan*/  clock; int /*<<< orphan*/  bus_width; } ;
struct mmc_host {int dummy; } ;
struct alcor_sdmmc_host {scalar_t__ cur_power_mode; int /*<<< orphan*/  cmd_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC1 (struct alcor_sdmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_ios*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct alcor_sdmmc_host* FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mmc_host *mmc, struct mmc_ios *ios)
{
	struct alcor_sdmmc_host *host = FUNC5(mmc);

	FUNC6(&host->cmd_mutex);

	FUNC4(host->dev, "set ios. bus width: %x, power mode: %x\n",
		ios->bus_width, ios->power_mode);

	if (ios->power_mode != host->cur_power_mode) {
		FUNC2(mmc, ios);
		host->cur_power_mode = ios->power_mode;
	} else {
		FUNC3(mmc, ios);
		FUNC0(mmc, ios);
		FUNC1(host, ios->clock);
	}

	FUNC7(&host->cmd_mutex);
}