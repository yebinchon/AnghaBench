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
typedef  int u32 ;
struct pxamci_host {int /*<<< orphan*/  mrq; int /*<<< orphan*/  dma_chan_tx; TYPE_1__* data; scalar_t__ base; struct mmc_command* cmd; } ;
struct mmc_command {int* resp; int flags; int /*<<< orphan*/  error; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_TRAN_DONE ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  END_CMD_RES ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int MMC_DATA_WRITE ; 
 scalar_t__ MMC_RES ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_CRC ; 
 unsigned int STAT_RES_CRC_ERR ; 
 unsigned int STAT_TIME_OUT_RESPONSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxamci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pxamci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pxamci_host*,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pxamci_host *host, unsigned int stat)
{
	struct mmc_command *cmd = host->cmd;
	int i;
	u32 v;

	if (!cmd)
		return 0;

	host->cmd = NULL;

	/*
	 * Did I mention this is Sick.  We always need to
	 * discard the upper 8 bits of the first 16-bit word.
	 */
	v = FUNC6(host->base + MMC_RES) & 0xffff;
	for (i = 0; i < 4; i++) {
		u32 w1 = FUNC6(host->base + MMC_RES) & 0xffff;
		u32 w2 = FUNC6(host->base + MMC_RES) & 0xffff;
		cmd->resp[i] = v << 24 | w1 << 8 | w2 >> 8;
		v = w2;
	}

	if (stat & STAT_TIME_OUT_RESPONSE) {
		cmd->error = -ETIMEDOUT;
	} else if (stat & STAT_RES_CRC_ERR && cmd->flags & MMC_RSP_CRC) {
		/*
		 * workaround for erratum #42:
		 * Intel PXA27x Family Processor Specification Update Rev 001
		 * A bogus CRC error can appear if the msb of a 136 bit
		 * response is a one.
		 */
		if (FUNC0() &&
		    (cmd->flags & MMC_RSP_136 && cmd->resp[0] & 0x80000000))
			FUNC2("ignoring CRC from command %d - *risky*\n", cmd->opcode);
		else
			cmd->error = -EILSEQ;
	}

	FUNC3(host, END_CMD_RES);
	if (host->data && !cmd->error) {
		FUNC4(host, DATA_TRAN_DONE);
		/*
		 * workaround for erratum #91, if doing write
		 * enable DMA late
		 */
		if (FUNC0() && host->data->flags & MMC_DATA_WRITE)
			FUNC1(host->dma_chan_tx);
	} else {
		FUNC5(host, host->mrq);
	}

	return 1;
}