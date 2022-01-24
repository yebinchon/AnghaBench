#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;TYPE_3__* stop; TYPE_2__* data; TYPE_1__* sbc; struct mmc_command* cmd; } ;
struct mmc_host {int /*<<< orphan*/  led; struct mmc_request* ongoing_mrq; int /*<<< orphan*/  card; int /*<<< orphan*/  retune_crc_disable; } ;
struct mmc_command {int error; scalar_t__ opcode; int* resp; scalar_t__ retries; } ;
struct TYPE_6__ {int error; scalar_t__ opcode; int* resp; } ;
struct TYPE_5__ {int error; int /*<<< orphan*/  bytes_xfered; } ;
struct TYPE_4__ {int error; scalar_t__ opcode; int* resp; } ;

/* Variables and functions */
 int EILSEQ ; 
 int /*<<< orphan*/  LED_OFF ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ; 
 int R1_SPI_ILLEGAL_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*) ; 
 scalar_t__ FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,scalar_t__,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_host*,struct mmc_request*) ; 

void FUNC10(struct mmc_host *host, struct mmc_request *mrq)
{
	struct mmc_command *cmd = mrq->cmd;
	int err = cmd->error;

	/* Flag re-tuning needed on CRC errors */
	if (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
	    cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200 &&
	    !host->retune_crc_disable &&
	    (err == -EILSEQ || (mrq->sbc && mrq->sbc->error == -EILSEQ) ||
	    (mrq->data && mrq->data->error == -EILSEQ) ||
	    (mrq->stop && mrq->stop->error == -EILSEQ)))
		FUNC5(host);

	if (err && cmd->retries && FUNC3(host)) {
		if (cmd->resp[0] & R1_SPI_ILLEGAL_COMMAND)
			cmd->retries = 0;
	}

	if (host->ongoing_mrq == mrq)
		host->ongoing_mrq = NULL;

	FUNC2(mrq);

	FUNC9(host, mrq);

	/*
	 * We list various conditions for the command to be considered
	 * properly done:
	 *
	 * - There was no error, OK fine then
	 * - We are not doing some kind of retry
	 * - The card was removed (...so just complete everything no matter
	 *   if there are errors or retries)
	 */
	if (!err || !cmd->retries || FUNC1(host->card)) {
		FUNC6(host, mrq);

		if (!host->ongoing_mrq)
			FUNC0(host->led, LED_OFF);

		if (mrq->sbc) {
			FUNC7("%s: req done <CMD%u>: %d: %08x %08x %08x %08x\n",
				FUNC4(host), mrq->sbc->opcode,
				mrq->sbc->error,
				mrq->sbc->resp[0], mrq->sbc->resp[1],
				mrq->sbc->resp[2], mrq->sbc->resp[3]);
		}

		FUNC7("%s: req done (CMD%u): %d: %08x %08x %08x %08x\n",
			FUNC4(host), cmd->opcode, err,
			cmd->resp[0], cmd->resp[1],
			cmd->resp[2], cmd->resp[3]);

		if (mrq->data) {
			FUNC7("%s:     %d bytes transferred: %d\n",
				FUNC4(host),
				mrq->data->bytes_xfered, mrq->data->error);
		}

		if (mrq->stop) {
			FUNC7("%s:     (CMD%u): %d: %08x %08x %08x %08x\n",
				FUNC4(host), mrq->stop->opcode,
				mrq->stop->error,
				mrq->stop->resp[0], mrq->stop->resp[1],
				mrq->stop->resp[2], mrq->stop->resp[3]);
		}
	}
	/*
	 * Request starter must handle retries - see
	 * mmc_wait_for_req_done().
	 */
	if (mrq->done)
		mrq->done(mrq);
}