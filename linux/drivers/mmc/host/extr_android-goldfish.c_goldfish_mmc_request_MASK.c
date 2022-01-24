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
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct goldfish_mmc_host {struct mmc_request* mrq; } ;
struct TYPE_2__ {scalar_t__ opcode; int flags; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int MMC_CMD_BCR ; 
 int MMC_RSP_R4 ; 
 int MMC_RSP_SPI_R4 ; 
 scalar_t__ SD_IO_SEND_OP_COND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct goldfish_mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct goldfish_mmc_host*,TYPE_1__*) ; 
 struct goldfish_mmc_host* FUNC3 (struct mmc_host*) ; 

__attribute__((used)) static void FUNC4(struct mmc_host *mmc, struct mmc_request *req)
{
	struct goldfish_mmc_host *host = FUNC3(mmc);

	FUNC0(host->mrq != NULL);

	host->mrq = req;
	FUNC1(host, req);
	FUNC2(host, req->cmd);

	/*
	 * This is to avoid accidentally being detected as an SDIO card
	 * in mmc_attach_sdio().
	 */
	if (req->cmd->opcode == SD_IO_SEND_OP_COND &&
	    req->cmd->flags == (MMC_RSP_SPI_R4 | MMC_RSP_R4 | MMC_CMD_BCR))
		req->cmd->error = -EINVAL;
}