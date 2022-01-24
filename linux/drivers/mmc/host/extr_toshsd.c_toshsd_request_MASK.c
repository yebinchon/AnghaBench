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
struct toshsd_host {int /*<<< orphan*/  lock; struct mmc_request* mrq; scalar_t__ ioaddr; } ;
struct mmc_request {TYPE_1__* cmd; int /*<<< orphan*/  data; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 scalar_t__ SD_CARDSTATUS ; 
 int SD_CARD_PRESENT_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 struct toshsd_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct toshsd_host*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct toshsd_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct toshsd_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct toshsd_host *host = FUNC2(mmc);
	unsigned long flags;

	/* abort if card not present */
	if (!(FUNC1(host->ioaddr + SD_CARDSTATUS) & SD_CARD_PRESENT_0)) {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC3(mmc, mrq);
		return;
	}

	FUNC4(&host->lock, flags);

	FUNC0(host->mrq != NULL);

	host->mrq = mrq;

	if (mrq->data)
		FUNC8(host, mrq->data);

	FUNC6(host, 1);

	FUNC7(host, mrq->cmd);

	FUNC5(&host->lock, flags);
}