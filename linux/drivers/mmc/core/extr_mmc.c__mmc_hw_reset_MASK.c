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
struct mmc_host {int caps; TYPE_1__* ops; int /*<<< orphan*/  f_init; struct mmc_card* card; } ;
struct mmc_card {int /*<<< orphan*/  ocr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* hw_reset ) (struct mmc_host*) ;} ;

/* Variables and functions */
 int MMC_CAP_HW_RESET ; 
 scalar_t__ FUNC0 (struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 int FUNC2 (struct mmc_host*,int /*<<< orphan*/ ,struct mmc_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC8(struct mmc_host *host)
{
	struct mmc_card *card = host->card;

	/*
	 * In the case of recovery, we can't expect flushing the cache to work
	 * always, but we have a go and ignore errors.
	 */
	FUNC1(host->card);

	if ((host->caps & MMC_CAP_HW_RESET) && host->ops->hw_reset &&
	     FUNC0(card)) {
		/* If the card accept RST_n signal, send it. */
		FUNC5(host, host->f_init);
		host->ops->hw_reset(host);
		/* Set initial state and call mmc_set_ios */
		FUNC6(host);
	} else {
		/* Do a brute force power cycle */
		FUNC3(host, card->ocr);
		FUNC4(host);
	}
	return FUNC2(host, card->ocr, card);
}