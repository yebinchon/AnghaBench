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
struct tmio_mmc_host {struct mmc_host* mmc; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct mmc_host {TYPE_1__ detect; scalar_t__ card; } ;

/* Variables and functions */
 int TMIO_STAT_CARD_INSERT ; 
 int TMIO_STAT_CARD_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tmio_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct tmio_mmc_host *host,
				       int ireg, int status)
{
	struct mmc_host *mmc = host->mmc;

	/* Card insert / remove attempts */
	if (ireg & (TMIO_STAT_CARD_INSERT | TMIO_STAT_CARD_REMOVE)) {
		FUNC2(host, TMIO_STAT_CARD_INSERT |
			TMIO_STAT_CARD_REMOVE);
		if ((((ireg & TMIO_STAT_CARD_REMOVE) && mmc->card) ||
		     ((ireg & TMIO_STAT_CARD_INSERT) && !mmc->card)) &&
		    !FUNC3(&mmc->detect.work))
			FUNC0(host->mmc, FUNC1(100));
		return true;
	}

	return false;
}