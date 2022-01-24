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
struct mmc_host {int caps2; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int MMC_CAP2_FULL_PWR_CYCLE ; 
 int FUNC0 (struct mmc_host*) ; 
 int FUNC1 (struct mmc_host*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_host *host)
{
	int err = 0;

	/*
	 * In a specific case for poweroff notify, we need to resume the card
	 * before we can shutdown it properly.
	 */
	if (FUNC2(host->card) &&
		!(host->caps2 & MMC_CAP2_FULL_PWR_CYCLE))
		err = FUNC0(host);

	if (!err)
		err = FUNC1(host, false);

	return err;
}