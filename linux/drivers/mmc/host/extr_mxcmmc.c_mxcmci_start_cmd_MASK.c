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
typedef  int /*<<< orphan*/  u32 ;
struct mxcmci_host {scalar_t__ dma_dir; int /*<<< orphan*/  lock; scalar_t__ use_sdio; TYPE_1__* desc; int /*<<< orphan*/  mmc; struct mmc_command* cmd; int /*<<< orphan*/  default_irq_mask; } ;
struct mmc_command {int error; unsigned int opcode; int /*<<< orphan*/  arg; } ;
struct TYPE_2__ {struct mxcmci_host* callback_param; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 unsigned int CMD_DAT_CONT_RESPONSE_136BIT ; 
 unsigned int CMD_DAT_CONT_RESPONSE_48BIT ; 
 unsigned int CMD_DAT_CONT_RESPONSE_48BIT_CRC ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  INT_END_CMD_RES_EN ; 
 int /*<<< orphan*/  INT_SDIO_IRQ_EN ; 
 int /*<<< orphan*/  INT_WRITE_OP_DONE_EN ; 
 int /*<<< orphan*/  MMC_REG_ARG ; 
 int /*<<< orphan*/  MMC_REG_CMD ; 
 int /*<<< orphan*/  MMC_REG_CMD_DAT_CONT ; 
 int /*<<< orphan*/  MMC_REG_INT_CNTR ; 
#define  MMC_RSP_NONE 132 
#define  MMC_RSP_R1 131 
#define  MMC_RSP_R1B 130 
#define  MMC_RSP_R2 129 
#define  MMC_RSP_R3 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mmc_command*) ; 
 int /*<<< orphan*/  mxcmci_dma_callback ; 
 scalar_t__ FUNC4 (struct mxcmci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mxcmci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mxcmci_host*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct mxcmci_host *host, struct mmc_command *cmd,
		unsigned int cmdat)
{
	u32 int_cntr = host->default_irq_mask;
	unsigned long flags;

	FUNC0(host->cmd != NULL);
	host->cmd = cmd;

	switch (FUNC3(cmd)) {
	case MMC_RSP_R1: /* short CRC, OPCODE */
	case MMC_RSP_R1B:/* short CRC, OPCODE, BUSY */
		cmdat |= CMD_DAT_CONT_RESPONSE_48BIT_CRC;
		break;
	case MMC_RSP_R2: /* long 136 bit + CRC */
		cmdat |= CMD_DAT_CONT_RESPONSE_136BIT;
		break;
	case MMC_RSP_R3: /* short */
		cmdat |= CMD_DAT_CONT_RESPONSE_48BIT;
		break;
	case MMC_RSP_NONE:
		break;
	default:
		FUNC1(FUNC2(host->mmc), "unhandled response type 0x%x\n",
				FUNC3(cmd));
		cmd->error = -EINVAL;
		return -EINVAL;
	}

	int_cntr = INT_END_CMD_RES_EN;

	if (FUNC4(host)) {
		if (host->dma_dir == DMA_FROM_DEVICE) {
			host->desc->callback = mxcmci_dma_callback;
			host->desc->callback_param = host;
		} else {
			int_cntr |= INT_WRITE_OP_DONE_EN;
		}
	}

	FUNC7(&host->lock, flags);
	if (host->use_sdio)
		int_cntr |= INT_SDIO_IRQ_EN;
	FUNC5(host, int_cntr, MMC_REG_INT_CNTR);
	FUNC8(&host->lock, flags);

	FUNC6(host, cmd->opcode, MMC_REG_CMD);
	FUNC5(host, cmd->arg, MMC_REG_ARG);
	FUNC6(host, cmdat, MMC_REG_CMD_DAT_CONT);

	return 0;
}