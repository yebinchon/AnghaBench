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
typedef  int u32 ;
struct mmc_data {int bytes_xfered; int blksz; int blocks; } ;
struct mmc_command {int error; int /*<<< orphan*/  mrq; struct mmc_data* data; } ;
struct meson_host {int /*<<< orphan*/  mmc; scalar_t__ regs; int /*<<< orphan*/  dev; struct mmc_command* cmd; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 int EILSEQ ; 
 int ETIMEDOUT ; 
 int IRQ_CRC_ERR ; 
 int IRQ_END_OF_CHAIN ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int IRQ_RESP_STATUS ; 
 int IRQ_SDIO ; 
 int IRQ_TIMEOUTS ; 
 scalar_t__ IRQ_WAKE_THREAD ; 
 scalar_t__ SD_EMMC_IRQ_EN ; 
 scalar_t__ SD_EMMC_START ; 
 scalar_t__ SD_EMMC_STATUS ; 
 int START_DESC_BUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct mmc_data*) ; 
 scalar_t__ FUNC3 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct meson_host *host = dev_id;
	struct mmc_command *cmd;
	struct mmc_data *data;
	u32 irq_en, status, raw_status;
	irqreturn_t ret = IRQ_NONE;

	irq_en = FUNC6(host->regs + SD_EMMC_IRQ_EN);
	raw_status = FUNC6(host->regs + SD_EMMC_STATUS);
	status = raw_status & irq_en;

	if (!status) {
		FUNC1(host->dev,
			"Unexpected IRQ! irq_en 0x%08x - status 0x%08x\n",
			 irq_en, raw_status);
		return IRQ_NONE;
	}

	if (FUNC0(!host) || FUNC0(!host->cmd))
		return IRQ_NONE;

	/* ack all raised interrupts */
	FUNC7(status, host->regs + SD_EMMC_STATUS);

	cmd = host->cmd;
	data = cmd->data;
	cmd->error = 0;
	if (status & IRQ_CRC_ERR) {
		FUNC1(host->dev, "CRC Error - status 0x%08x\n", status);
		cmd->error = -EILSEQ;
		ret = IRQ_WAKE_THREAD;
		goto out;
	}

	if (status & IRQ_TIMEOUTS) {
		FUNC1(host->dev, "Timeout - status 0x%08x\n", status);
		cmd->error = -ETIMEDOUT;
		ret = IRQ_WAKE_THREAD;
		goto out;
	}

	FUNC4(host->mmc, cmd);

	if (status & IRQ_SDIO) {
		FUNC1(host->dev, "IRQ: SDIO TODO.\n");
		ret = IRQ_HANDLED;
	}

	if (status & (IRQ_END_OF_CHAIN | IRQ_RESP_STATUS)) {
		if (data && !cmd->error)
			data->bytes_xfered = data->blksz * data->blocks;
		if (FUNC2(data) ||
		    FUNC3(cmd))
			ret = IRQ_WAKE_THREAD;
		else
			ret = IRQ_HANDLED;
	}

out:
	if (cmd->error) {
		/* Stop desc in case of errors */
		u32 start = FUNC6(host->regs + SD_EMMC_START);

		start &= ~START_DESC_BUSY;
		FUNC7(start, host->regs + SD_EMMC_START);
	}

	if (ret == IRQ_HANDLED)
		FUNC5(host->mmc, cmd->mrq);

	return ret;
}