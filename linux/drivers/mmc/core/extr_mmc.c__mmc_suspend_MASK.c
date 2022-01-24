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
 unsigned int EXT_CSD_POWER_OFF_LONG ; 
 unsigned int EXT_CSD_POWER_OFF_SHORT ; 
 int MMC_CAP2_FULL_PWR_CYCLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct mmc_host*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_host*) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct mmc_host*) ; 
 int FUNC11 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC12(struct mmc_host *host, bool is_suspend)
{
	int err = 0;
	unsigned int notify_type = is_suspend ? EXT_CSD_POWER_OFF_SHORT :
					EXT_CSD_POWER_OFF_LONG;

	FUNC4(host);

	if (FUNC3(host->card))
		goto out;

	err = FUNC6(host->card);
	if (err)
		goto out;

	if (FUNC0(host->card) &&
		((host->caps2 & MMC_CAP2_FULL_PWR_CYCLE) || !is_suspend))
		err = FUNC9(host->card, notify_type);
	else if (FUNC1(host->card))
		err = FUNC11(host);
	else if (!FUNC7(host))
		err = FUNC5(host);

	if (!err) {
		FUNC8(host);
		FUNC2(host->card);
	}
out:
	FUNC10(host);
	return err;
}