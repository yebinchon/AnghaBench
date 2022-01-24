#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mmc_request {TYPE_2__* cmd; struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int blocks; int blksz; } ;
struct atmel_mci_slot {int /*<<< orphan*/  flags; int /*<<< orphan*/  mrq; struct atmel_mci* host; } ;
struct atmel_mci {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  opcode; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMCI_CARD_PRESENT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_mci*,struct atmel_mci_slot*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct atmel_mci_slot* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct atmel_mci_slot	*slot = FUNC3(mmc);
	struct atmel_mci	*host = slot->host;
	struct mmc_data		*data;

	FUNC0(slot->mrq);
	FUNC2(&host->pdev->dev, "MRQ: cmd %u\n", mrq->cmd->opcode);

	/*
	 * We may "know" the card is gone even though there's still an
	 * electrical connection. If so, we really need to communicate
	 * this to the MMC core since there won't be any more
	 * interrupts as the card is completely removed. Otherwise,
	 * the MMC core might believe the card is still there even
	 * though the card was just removed very slowly.
	 */
	if (!FUNC5(ATMCI_CARD_PRESENT, &slot->flags)) {
		mrq->cmd->error = -ENOMEDIUM;
		FUNC4(mmc, mrq);
		return;
	}

	/* We don't support multiple blocks of weird lengths. */
	data = mrq->data;
	if (data && data->blocks > 1 && data->blksz & 3) {
		mrq->cmd->error = -EINVAL;
		FUNC4(mmc, mrq);
	}

	FUNC1(host, slot, mrq);
}