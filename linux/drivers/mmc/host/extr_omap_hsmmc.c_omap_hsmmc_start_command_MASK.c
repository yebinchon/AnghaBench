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
struct omap_hsmmc_host {int response_busy; int flags; int req_in_progress; int /*<<< orphan*/  base; scalar_t__ use_dma; TYPE_2__* mrq; struct mmc_command* cmd; int /*<<< orphan*/  mmc; } ;
struct mmc_data {int flags; } ;
struct mmc_command {int opcode; int arg; int flags; } ;
struct TYPE_4__ {TYPE_1__* sbc; struct mmc_command* stop; } ;
struct TYPE_3__ {int arg; } ;

/* Variables and functions */
 int ACEN_ACMD23 ; 
 int /*<<< orphan*/  ARG ; 
 int AUTO_CMD23 ; 
 int BCE ; 
 int /*<<< orphan*/  CMD ; 
 int DDIR ; 
 int DMAE ; 
 int DP_SELECT ; 
 int MMC_DATA_READ ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_BUSY ; 
 int MMC_RSP_PRESENT ; 
 int MSBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDMASA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hsmmc_host*,struct mmc_command*) ; 

__attribute__((used)) static void
FUNC6(struct omap_hsmmc_host *host, struct mmc_command *cmd,
	struct mmc_data *data)
{
	int cmdreg = 0, resptype = 0, cmdtype = 0;

	FUNC1(FUNC2(host->mmc), "%s: CMD%d, argument 0x%08x\n",
		FUNC3(host->mmc), cmd->opcode, cmd->arg);
	host->cmd = cmd;

	FUNC5(host, cmd);

	host->response_busy = 0;
	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136)
			resptype = 1;
		else if (cmd->flags & MMC_RSP_BUSY) {
			resptype = 3;
			host->response_busy = 1;
		} else
			resptype = 2;
	}

	/*
	 * Unlike OMAP1 controller, the cmdtype does not seem to be based on
	 * ac, bc, adtc, bcr. Only commands ending an open ended transfer need
	 * a val of 0x3, rest 0x0.
	 */
	if (cmd == host->mrq->stop)
		cmdtype = 0x3;

	cmdreg = (cmd->opcode << 24) | (resptype << 16) | (cmdtype << 22);

	if ((host->flags & AUTO_CMD23) && FUNC4(cmd->opcode) &&
	    host->mrq->sbc) {
		cmdreg |= ACEN_ACMD23;
		FUNC0(host->base, SDMASA, host->mrq->sbc->arg);
	}
	if (data) {
		cmdreg |= DP_SELECT | MSBS | BCE;
		if (data->flags & MMC_DATA_READ)
			cmdreg |= DDIR;
		else
			cmdreg &= ~(DDIR);
	}

	if (host->use_dma)
		cmdreg |= DMAE;

	host->req_in_progress = 1;

	FUNC0(host->base, ARG, cmd->arg);
	FUNC0(host->base, CMD, cmdreg);
}