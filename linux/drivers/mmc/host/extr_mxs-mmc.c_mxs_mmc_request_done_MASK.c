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
struct mxs_ssp {int /*<<< orphan*/  dma_dir; scalar_t__ base; } ;
struct mxs_mmc_host {int /*<<< orphan*/  mmc; struct mmc_request* mrq; struct mmc_data* data; struct mxs_ssp ssp; struct mmc_command* cmd; } ;
struct mmc_request {int /*<<< orphan*/  stop; struct mmc_command* sbc; int /*<<< orphan*/  cmd; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; scalar_t__ error; scalar_t__ stop; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct mmc_command {void** resp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mxs_ssp*) ; 
 scalar_t__ FUNC1 (struct mxs_ssp*) ; 
 scalar_t__ FUNC2 (struct mxs_ssp*) ; 
 scalar_t__ FUNC3 (struct mxs_ssp*) ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int FUNC7 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct mxs_mmc_host*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct mxs_mmc_host *host)
{
	struct mmc_command *cmd = host->cmd;
	struct mmc_data *data = host->data;
	struct mmc_request *mrq = host->mrq;
	struct mxs_ssp *ssp = &host->ssp;

	if (FUNC7(cmd) & MMC_RSP_PRESENT) {
		if (FUNC7(cmd) & MMC_RSP_136) {
			cmd->resp[3] = FUNC9(ssp->base + FUNC0(ssp));
			cmd->resp[2] = FUNC9(ssp->base + FUNC1(ssp));
			cmd->resp[1] = FUNC9(ssp->base + FUNC2(ssp));
			cmd->resp[0] = FUNC9(ssp->base + FUNC3(ssp));
		} else {
			cmd->resp[0] = FUNC9(ssp->base + FUNC0(ssp));
		}
	}

	if (cmd == mrq->sbc) {
		/* Finished CMD23, now send actual command. */
		FUNC8(host, mrq->cmd);
		return;
	} else if (data) {
		FUNC4(FUNC5(host->mmc), data->sg,
			     data->sg_len, ssp->dma_dir);
		/*
		 * If there was an error on any block, we mark all
		 * data blocks as being in error.
		 */
		if (!data->error)
			data->bytes_xfered = data->blocks * data->blksz;
		else
			data->bytes_xfered = 0;

		host->data = NULL;
		if (data->stop && (data->error || !mrq->sbc)) {
			FUNC8(host, mrq->stop);
			return;
		}
	}

	host->mrq = NULL;
	FUNC6(host->mmc, mrq);
}