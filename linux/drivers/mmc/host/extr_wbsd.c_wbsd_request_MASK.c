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
struct wbsd_host {int flags; int dma; int /*<<< orphan*/  lock; int /*<<< orphan*/  fifo_tasklet; int /*<<< orphan*/  mmc; struct mmc_request* mrq; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int opcode; int /*<<< orphan*/  error; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 int WBSD_FCARD_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct wbsd_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wbsd_host*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct wbsd_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct wbsd_host*,struct mmc_command*) ; 

__attribute__((used)) static void FUNC10(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct wbsd_host *host = FUNC2(mmc);
	struct mmc_command *cmd;

	/*
	 * Disable tasklets to avoid a deadlock.
	 */
	FUNC4(&host->lock);

	FUNC0(host->mrq != NULL);

	cmd = mrq->cmd;

	host->mrq = mrq;

	/*
	 * Check that there is actually a card in the slot.
	 */
	if (!(host->flags & WBSD_FCARD_PRESENT)) {
		cmd->error = -ENOMEDIUM;
		goto done;
	}

	if (cmd->data) {
		/*
		 * The hardware is so delightfully stupid that it has a list
		 * of "data" commands. If a command isn't on this list, it'll
		 * just go back to the idle state and won't send any data
		 * interrupts.
		 */
		switch (cmd->opcode) {
		case 11:
		case 17:
		case 18:
		case 20:
		case 24:
		case 25:
		case 26:
		case 27:
		case 30:
		case 42:
		case 56:
			break;

		/* ACMDs. We don't keep track of state, so we just treat them
		 * like any other command. */
		case 51:
			break;

		default:
			FUNC3("%s: Data command %d is not supported by this controller\n",
				FUNC1(host->mmc), cmd->opcode);
			cmd->error = -EINVAL;

			goto done;
		}
	}

	/*
	 * Does the request include data?
	 */
	if (cmd->data) {
		FUNC7(host, cmd->data);

		if (cmd->data->error)
			goto done;
	}

	FUNC9(host, cmd);

	/*
	 * If this is a data transfer the request
	 * will be finished after the data has
	 * transferred.
	 */
	if (cmd->data && !cmd->error) {
		/*
		 * Dirty fix for hardware bug.
		 */
		if (host->dma == -1)
			FUNC6(&host->fifo_tasklet);

		FUNC5(&host->lock);

		return;
	}

done:
	FUNC8(host, mrq);

	FUNC5(&host->lock);
}