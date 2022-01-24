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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_request {int dummy; } ;
struct mmc_data {int blksz; int blocks; } ;
struct mmc_command {scalar_t__ opcode; struct mmc_data* data; } ;
struct dw_mci_slot {int /*<<< orphan*/  flags; int /*<<< orphan*/  mmc; struct mmc_request* mrq; } ;
struct dw_mci {int /*<<< orphan*/  stop_cmdr; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  cmd11_timer; scalar_t__ pending_events; scalar_t__ dir_status; scalar_t__ data_status; scalar_t__ cmd_status; scalar_t__ completed_events; struct mmc_request* mrq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKSIZ ; 
 int /*<<< orphan*/  BYTCNT ; 
 int /*<<< orphan*/  DW_MMC_CARD_NEED_INIT ; 
 int /*<<< orphan*/  EVENT_CMD_COMPLETE ; 
 int /*<<< orphan*/  SDMMC_CMD_INIT ; 
 scalar_t__ SD_SWITCH_VOLTAGE ; 
 int /*<<< orphan*/  TMOUT ; 
 int /*<<< orphan*/  FUNC0 (struct dw_mci*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,struct mmc_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_mci*,struct mmc_data*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct dw_mci *host,
				   struct dw_mci_slot *slot,
				   struct mmc_command *cmd)
{
	struct mmc_request *mrq;
	struct mmc_data	*data;
	u32 cmdflags;

	mrq = slot->mrq;

	host->mrq = mrq;

	host->pending_events = 0;
	host->completed_events = 0;
	host->cmd_status = 0;
	host->data_status = 0;
	host->dir_status = 0;

	data = cmd->data;
	if (data) {
		FUNC4(host, TMOUT, 0xFFFFFFFF);
		FUNC4(host, BYTCNT, data->blksz*data->blocks);
		FUNC4(host, BLKSIZ, data->blksz);
	}

	cmdflags = FUNC1(slot->mmc, cmd);

	/* this is the first command, send the initialization clock */
	if (FUNC9(DW_MMC_CARD_NEED_INIT, &slot->flags))
		cmdflags |= SDMMC_CMD_INIT;

	if (data) {
		FUNC3(host, data);
		FUNC11(); /* drain writebuffer */
	}

	FUNC2(host, cmd, cmdflags);

	if (cmd->opcode == SD_SWITCH_VOLTAGE) {
		unsigned long irqflags;

		/*
		 * Databook says to fail after 2ms w/ no response, but evidence
		 * shows that sometimes the cmd11 interrupt takes over 130ms.
		 * We'll set to 500ms, plus an extra jiffy just in case jiffies
		 * is just about to roll over.
		 *
		 * We do this whole thing under spinlock and only if the
		 * command hasn't already completed (indicating the the irq
		 * already ran so we don't want the timeout).
		 */
		FUNC7(&host->irq_lock, irqflags);
		if (!FUNC10(EVENT_CMD_COMPLETE, &host->pending_events))
			FUNC5(&host->cmd11_timer,
				jiffies + FUNC6(500) + 1);
		FUNC8(&host->irq_lock, irqflags);
	}

	host->stop_cmdr = FUNC0(host, cmd);
}