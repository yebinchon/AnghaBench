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
struct mmc_host {int caps; int /*<<< orphan*/  detect; scalar_t__ detect_change; int /*<<< orphan*/  claimed; struct mmc_card* card; } ;
struct mmc_card {int dummy; } ;

/* Variables and functions */
 int MMC_CAP_NEEDS_POLL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int FUNC5 (struct mmc_card*) ; 

int FUNC6(struct mmc_host *host)
{
	struct mmc_card *card = host->card;
	int ret;

	FUNC0(!host->claimed);

	if (!card)
		return 1;

	if (!FUNC4(host))
		return 0;

	ret = FUNC5(card);
	/*
	 * The card will be considered unchanged unless we have been asked to
	 * detect a change or host requires polling to provide card detection.
	 */
	if (!host->detect_change && !(host->caps & MMC_CAP_NEEDS_POLL))
		return ret;

	host->detect_change = 0;
	if (!ret) {
		ret = FUNC1(host);
		if (ret && (host->caps & MMC_CAP_NEEDS_POLL)) {
			/*
			 * Schedule a detect work as soon as possible to let a
			 * rescan handle the card removal.
			 */
			FUNC3(&host->detect);
			FUNC2(host, 0, false);
		}
	}

	return ret;
}