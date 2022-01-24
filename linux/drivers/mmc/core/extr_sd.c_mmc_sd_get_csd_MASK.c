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
struct mmc_host {int dummy; } ;
struct mmc_card {int /*<<< orphan*/  raw_csd; } ;

/* Variables and functions */
 int FUNC0 (struct mmc_card*) ; 
 int FUNC1 (struct mmc_card*,int /*<<< orphan*/ ) ; 

int FUNC2(struct mmc_host *host, struct mmc_card *card)
{
	int err;

	/*
	 * Fetch CSD from card.
	 */
	err = FUNC1(card, card->raw_csd);
	if (err)
		return err;

	err = FUNC0(card);
	if (err)
		return err;

	return 0;
}