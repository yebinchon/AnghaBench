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
struct tmio_mmc_host {int /*<<< orphan*/  done; TYPE_1__* pdev; TYPE_2__* mrq; scalar_t__ dma_on; struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; int /*<<< orphan*/  error; struct mmc_command* stop; } ;
struct mmc_command {scalar_t__ opcode; int /*<<< orphan*/ * resp; scalar_t__ arg; } ;
struct TYPE_4__ {int /*<<< orphan*/  sbc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_RESPONSE ; 
 int /*<<< orphan*/  CTL_STOP_INTERNAL_ACTION ; 
 int MMC_DATA_READ ; 
 scalar_t__ MMC_STOP_TRANSMISSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tmio_mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tmio_mmc_host*) ; 

void FUNC8(struct tmio_mmc_host *host)
{
	struct mmc_data *data = host->data;
	struct mmc_command *stop;

	host->data = NULL;

	if (!data) {
		FUNC2(&host->pdev->dev, "Spurious data end IRQ\n");
		return;
	}
	stop = data->stop;

	/* FIXME - return correct transfer count on errors */
	if (!data->error)
		data->bytes_xfered = data->blocks * data->blksz;
	else
		data->bytes_xfered = 0;

	FUNC3("Completed data request\n");

	/*
	 * FIXME: other drivers allow an optional stop command of any given type
	 *        which we dont do, as the chip can auto generate them.
	 *        Perhaps we can be smarter about when to use auto CMD12 and
	 *        only issue the auto request when we know this is the desired
	 *        stop command, allowing fallback to the stop command the
	 *        upper layers expect. For now, we do what works.
	 */

	if (data->flags & MMC_DATA_READ) {
		if (host->dma_on)
			FUNC7(host);
		FUNC0(&host->pdev->dev, "Complete Rx request %p\n",
			host->mrq);
	} else {
		FUNC0(&host->pdev->dev, "Complete Tx request %p\n",
			host->mrq);
	}

	if (stop && !host->mrq->sbc) {
		if (stop->opcode != MMC_STOP_TRANSMISSION || stop->arg)
			FUNC1(&host->pdev->dev, "unsupported stop: CMD%u,0x%x. We did CMD12,0\n",
				stop->opcode, stop->arg);

		/* fill in response from auto CMD12 */
		stop->resp[0] = FUNC5(host, CTL_RESPONSE);

		FUNC6(host, CTL_STOP_INTERNAL_ACTION, 0);
	}

	FUNC4(&host->done);
}