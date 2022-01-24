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
struct mmc_host {int caps; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MMC_CAP_POWER_OFF_CARD ; 
 int FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *host)
{
	int err;

	/* Make sure card is powered before detecting it */
	if (host->caps & MMC_CAP_POWER_OFF_CARD) {
		err = FUNC6(&host->card->dev);
		if (err < 0) {
			FUNC7(&host->card->dev);
			goto out;
		}
	}

	FUNC1(host);

	/*
	 * Just check if our card has been removed.
	 */
	err = FUNC0(host);

	FUNC4(host);

	/*
	 * Tell PM core it's OK to power off the card now.
	 *
	 * The _sync variant is used in order to ensure that the card
	 * is left powered off in case an error occurred, and the card
	 * is going to be removed.
	 *
	 * Since there is no specific reason to believe a new user
	 * is about to show up at this point, the _sync variant is
	 * desirable anyway.
	 */
	if (host->caps & MMC_CAP_POWER_OFF_CARD)
		FUNC8(&host->card->dev);

out:
	if (err) {
		FUNC5(host);

		FUNC1(host);
		FUNC2(host);
		FUNC3(host);
		FUNC4(host);
	}
}