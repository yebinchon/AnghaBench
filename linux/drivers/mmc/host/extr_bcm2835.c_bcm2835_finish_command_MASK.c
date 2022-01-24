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
struct mmc_command {scalar_t__ opcode; int flags; void** resp; int /*<<< orphan*/  error; } ;
struct device {int dummy; } ;
struct bcm2835_host {scalar_t__ data_complete; scalar_t__ data; struct mmc_command* cmd; TYPE_2__* mrq; int /*<<< orphan*/  use_busy; scalar_t__ dma_desc; scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct mmc_command* stop; int /*<<< orphan*/  cmd; struct mmc_command* sbc; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 scalar_t__ MMC_SEND_OP_COND ; 
 int SDCMD_FAIL_FLAG ; 
 int SDCMD_NEW_FLAG ; 
 scalar_t__ SDEDM ; 
 int SDEDM_FORCE_DATA_MODE ; 
 int SDEDM_FSM_MASK ; 
 int SDEDM_FSM_READWAIT ; 
 int SDEDM_FSM_WRITESTART1 ; 
 scalar_t__ SDHSTS ; 
 int SDHSTS_CMD_TIME_OUT ; 
 int SDHSTS_CRC7_ERROR ; 
 int SDHSTS_ERROR_MASK ; 
 scalar_t__ SDRSP0 ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_host*) ; 
 int FUNC2 (struct bcm2835_host*,int) ; 
 scalar_t__ FUNC3 (struct bcm2835_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm2835_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct bcm2835_host *host)
{
	struct device *dev = &host->pdev->dev;
	struct mmc_command *cmd = host->cmd;
	u32 sdcmd;

	sdcmd = FUNC2(host, 100);

	/* Check for errors */
	if (sdcmd & SDCMD_NEW_FLAG) {
		FUNC6(dev, "command never completed.\n");
		FUNC0(host);
		host->cmd->error = -EIO;
		FUNC1(host);
		return;
	} else if (sdcmd & SDCMD_FAIL_FLAG) {
		u32 sdhsts = FUNC7(host->ioaddr + SDHSTS);

		/* Clear the errors */
		FUNC8(SDHSTS_ERROR_MASK, host->ioaddr + SDHSTS);

		if (!(sdhsts & SDHSTS_CRC7_ERROR) ||
		    (host->cmd->opcode != MMC_SEND_OP_COND)) {
			u32 edm, fsm;

			if (sdhsts & SDHSTS_CMD_TIME_OUT) {
				host->cmd->error = -ETIMEDOUT;
			} else {
				FUNC6(dev, "unexpected command %d error\n",
					host->cmd->opcode);
				FUNC0(host);
				host->cmd->error = -EILSEQ;
			}
			edm = FUNC7(host->ioaddr + SDEDM);
			fsm = edm & SDEDM_FSM_MASK;
			if (fsm == SDEDM_FSM_READWAIT ||
			    fsm == SDEDM_FSM_WRITESTART1)
				/* Kick the FSM out of its wait */
				FUNC8(edm | SDEDM_FORCE_DATA_MODE,
				       host->ioaddr + SDEDM);
			FUNC1(host);
			return;
		}
	}

	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			int i;

			for (i = 0; i < 4; i++) {
				cmd->resp[3 - i] =
					FUNC7(host->ioaddr + SDRSP0 + i * 4);
			}
		} else {
			cmd->resp[0] = FUNC7(host->ioaddr + SDRSP0);
		}
	}

	if (cmd == host->mrq->sbc) {
		/* Finished CMD23, now send actual command. */
		host->cmd = NULL;
		if (FUNC3(host, host->mrq->cmd)) {
			if (host->data && host->dma_desc)
				/* DMA transfer starts now, PIO starts
				 * after irq
				 */
				FUNC4(host);

			if (!host->use_busy)
				FUNC9(host);
		}
	} else if (cmd == host->mrq->stop) {
		/* Finished CMD12 */
		FUNC1(host);
	} else {
		/* Processed actual command. */
		host->cmd = NULL;
		if (!host->data)
			FUNC1(host);
		else if (host->data_complete)
			FUNC5(host);
	}
}