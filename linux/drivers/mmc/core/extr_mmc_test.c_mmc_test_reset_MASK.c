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
struct mmc_test_card {struct mmc_card* card; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ cmdq_en; } ;
struct mmc_card {TYPE_1__ ext_csd; struct mmc_host* host; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int RESULT_FAIL ; 
 int RESULT_OK ; 
 int RESULT_UNSUP_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_card*) ; 
 int FUNC1 (struct mmc_host*) ; 

__attribute__((used)) static int FUNC2(struct mmc_test_card *test)
{
	struct mmc_card *card = test->card;
	struct mmc_host *host = card->host;
	int err;

	err = FUNC1(host);
	if (!err) {
		/*
		 * Reset will re-enable the card's command queue, but tests
		 * expect it to be disabled.
		 */
		if (card->ext_csd.cmdq_en)
			FUNC0(card);
		return RESULT_OK;
	} else if (err == -EOPNOTSUPP) {
		return RESULT_UNSUP_HOST;
	}

	return RESULT_FAIL;
}