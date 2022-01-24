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
struct mmc_request {int /*<<< orphan*/  stop; struct mmc_command* cmd; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; } ;
struct mmc_command {int flags; scalar_t__ error; struct mmc_data* data; } ;
struct jz4740_mmc_host {int state; int /*<<< orphan*/  use_dma; struct mmc_request* req; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  JZ4740_MMC_STATE_DONE 131 
#define  JZ4740_MMC_STATE_READ_RESPONSE 130 
#define  JZ4740_MMC_STATE_SEND_STOP 129 
#define  JZ4740_MMC_STATE_TRANSFER_DATA 128 
 int /*<<< orphan*/  JZ_MMC_IRQ_DATA_TRAN_DONE ; 
 int /*<<< orphan*/  JZ_MMC_IRQ_PRG_DONE ; 
 int MMC_DATA_READ ; 
 int MMC_RSP_BUSY ; 
 int MMC_RSP_PRESENT ; 
 int FUNC0 (struct jz4740_mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4740_mmc_host*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4740_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct jz4740_mmc_host*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 int FUNC7 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct jz4740_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct jz4740_mmc_host*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *devid)
{
	struct jz4740_mmc_host *host = (struct jz4740_mmc_host *)devid;
	struct mmc_command *cmd = host->req->cmd;
	struct mmc_request *req = host->req;
	struct mmc_data *data = cmd->data;
	bool timeout = false;

	if (cmd->error)
		host->state = JZ4740_MMC_STATE_DONE;

	switch (host->state) {
	case JZ4740_MMC_STATE_READ_RESPONSE:
		if (cmd->flags & MMC_RSP_PRESENT)
			FUNC2(host, cmd);

		if (!data)
			break;

		FUNC9(host);
		/* fall through */

	case JZ4740_MMC_STATE_TRANSFER_DATA:
		if (host->use_dma) {
			/* Use DMA if enabled.
			 * Data transfer direction is defined later by
			 * relying on data flags in
			 * jz4740_mmc_prepare_dma_data() and
			 * jz4740_mmc_start_dma_transfer().
			 */
			timeout = FUNC5(host, data);
			data->bytes_xfered = data->blocks * data->blksz;
		} else if (data->flags & MMC_DATA_READ)
			/* Use PIO if DMA is not enabled.
			 * Data transfer direction was defined before
			 * by relying on data flags in
			 * jz_mmc_prepare_data_transfer().
			 */
			timeout = FUNC1(host, data);
		else
			timeout = FUNC7(host, data);

		if (FUNC11(timeout)) {
			host->state = JZ4740_MMC_STATE_TRANSFER_DATA;
			break;
		}

		FUNC6(host, data);

		timeout = FUNC0(host, JZ_MMC_IRQ_DATA_TRAN_DONE);
		if (FUNC11(timeout)) {
			host->state = JZ4740_MMC_STATE_SEND_STOP;
			break;
		}
		FUNC8(host, JZ_MMC_IRQ_DATA_TRAN_DONE);
		/* fall through */

	case JZ4740_MMC_STATE_SEND_STOP:
		if (!req->stop)
			break;

		FUNC4(host, req->stop);

		if (FUNC10(req->stop) & MMC_RSP_BUSY) {
			timeout = FUNC0(host,
						      JZ_MMC_IRQ_PRG_DONE);
			if (timeout) {
				host->state = JZ4740_MMC_STATE_DONE;
				break;
			}
		}
	case JZ4740_MMC_STATE_DONE:
		break;
	}

	if (!timeout)
		FUNC3(host);

	return IRQ_HANDLED;
}