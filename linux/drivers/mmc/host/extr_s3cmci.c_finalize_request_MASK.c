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
typedef  int u32 ;
struct s3cmci_host {scalar_t__ complete_what; int cmd_is_stop; int prescaler; int /*<<< orphan*/  mmc; struct mmc_request* mrq; scalar_t__ base; scalar_t__ is2440; int /*<<< orphan*/  dma; int /*<<< orphan*/  dma_complete; } ;
struct mmc_request {TYPE_2__* data; struct mmc_command* cmd; struct mmc_command* stop; } ;
struct mmc_command {scalar_t__ error; TYPE_1__* data; void** resp; } ;
struct TYPE_4__ {scalar_t__ error; int bytes_xfered; int blocks; int blksz; } ;
struct TYPE_3__ {scalar_t__ error; scalar_t__ stop; } ;

/* Variables and functions */
 scalar_t__ COMPLETION_FINALIZE ; 
 scalar_t__ COMPLETION_NONE ; 
 scalar_t__ S3C2410_SDICMDARG ; 
 scalar_t__ S3C2410_SDICMDCON ; 
 scalar_t__ S3C2410_SDICON ; 
 int S3C2410_SDICON_FIFORESET ; 
 scalar_t__ S3C2410_SDIDCON ; 
 int S3C2410_SDIDCON_STOP ; 
 scalar_t__ S3C2410_SDIFSTA ; 
 scalar_t__ S3C2410_SDIPRE ; 
 scalar_t__ S3C2410_SDIRSP0 ; 
 scalar_t__ S3C2410_SDIRSP1 ; 
 scalar_t__ S3C2410_SDIRSP2 ; 
 scalar_t__ S3C2410_SDIRSP3 ; 
 int S3C2440_SDIFSTA_FIFOFAIL ; 
 int S3C2440_SDIFSTA_FIFORESET ; 
 int /*<<< orphan*/  FUNC0 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct s3cmci_host*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbg_dma ; 
 int /*<<< orphan*/  FUNC2 (struct s3cmci_host*,struct mmc_command*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct s3cmci_host*) ; 
 scalar_t__ FUNC7 (struct s3cmci_host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct s3cmci_host *host)
{
	struct mmc_request *mrq = host->mrq;
	struct mmc_command *cmd;
	int debug_as_failure = 0;

	if (host->complete_what != COMPLETION_FINALIZE)
		return;

	if (!mrq)
		return;
	cmd = host->cmd_is_stop ? mrq->stop : mrq->cmd;

	if (cmd->data && (cmd->error == 0) &&
	    (cmd->data->error == 0)) {
		if (FUNC7(host) && (!host->dma_complete)) {
			FUNC1(host, dbg_dma, "DMA Missing (%d)!\n",
			    host->dma_complete);
			return;
		}
	}

	/* Read response from controller. */
	cmd->resp[0] = FUNC5(host->base + S3C2410_SDIRSP0);
	cmd->resp[1] = FUNC5(host->base + S3C2410_SDIRSP1);
	cmd->resp[2] = FUNC5(host->base + S3C2410_SDIRSP2);
	cmd->resp[3] = FUNC5(host->base + S3C2410_SDIRSP3);

	FUNC9(host->prescaler, host->base + S3C2410_SDIPRE);

	if (cmd->error)
		debug_as_failure = 1;

	if (cmd->data && cmd->data->error)
		debug_as_failure = 1;

	FUNC2(host, cmd, debug_as_failure);

	/* Cleanup controller */
	FUNC9(0, host->base + S3C2410_SDICMDARG);
	FUNC9(S3C2410_SDIDCON_STOP, host->base + S3C2410_SDIDCON);
	FUNC9(0, host->base + S3C2410_SDICMDCON);
	FUNC0(host);

	if (cmd->data && cmd->error)
		cmd->data->error = cmd->error;

	if (cmd->data && cmd->data->stop && (!host->cmd_is_stop)) {
		host->cmd_is_stop = 1;
		FUNC8(host->mmc);
		return;
	}

	/* If we have no data transfer we are finished here */
	if (!mrq->data)
		goto request_done;

	/* Calculate the amout of bytes transfer if there was no error */
	if (mrq->data->error == 0) {
		mrq->data->bytes_xfered =
			(mrq->data->blocks * mrq->data->blksz);
	} else {
		mrq->data->bytes_xfered = 0;
	}

	/* If we had an error while transferring data we flush the
	 * DMA channel and the fifo to clear out any garbage. */
	if (mrq->data->error != 0) {
		if (FUNC7(host))
			FUNC3(host->dma);

		if (host->is2440) {
			/* Clear failure register and reset fifo. */
			FUNC9(S3C2440_SDIFSTA_FIFORESET |
			       S3C2440_SDIFSTA_FIFOFAIL,
			       host->base + S3C2410_SDIFSTA);
		} else {
			u32 mci_con;

			/* reset fifo */
			mci_con = FUNC5(host->base + S3C2410_SDICON);
			mci_con |= S3C2410_SDICON_FIFORESET;

			FUNC9(mci_con, host->base + S3C2410_SDICON);
		}
	}

request_done:
	host->complete_what = COMPLETION_NONE;
	host->mrq = NULL;

	FUNC6(host);
	FUNC4(host->mmc, mrq);
}