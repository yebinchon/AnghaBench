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
typedef  scalar_t__ u32 ;
struct sdhci_host {scalar_t__ sdma_boundary; int tuning_done; int /*<<< orphan*/  buf_ready_int; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cmd; struct mmc_host* mmc; } ;
struct mmc_request {struct mmc_command* cmd; } ;
struct TYPE_2__ {scalar_t__ bus_width; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct mmc_command {scalar_t__ opcode; int flags; struct mmc_request* mrq; } ;

/* Variables and functions */
 scalar_t__ MMC_BUS_WIDTH_8 ; 
 int MMC_CMD_ADTC ; 
 int MMC_RSP_R1 ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ; 
 int /*<<< orphan*/  SDHCI_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  SDHCI_TRANSFER_MODE ; 
 int /*<<< orphan*/  SDHCI_TRNS_READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC8(struct sdhci_host *host, u32 opcode)
{
	struct mmc_host *mmc = host->mmc;
	struct mmc_command cmd = {};
	struct mmc_request mrq = {};
	unsigned long flags;
	u32 b = host->sdma_boundary;

	FUNC5(&host->lock, flags);

	cmd.opcode = opcode;
	cmd.flags = MMC_RSP_R1 | MMC_CMD_ADTC;
	cmd.mrq = &mrq;

	mrq.cmd = &cmd;
	/*
	 * In response to CMD19, the card sends 64 bytes of tuning
	 * block to the Host Controller. So we set the block size
	 * to 64 here.
	 */
	if (cmd.opcode == MMC_SEND_TUNING_BLOCK_HS200 &&
	    mmc->ios.bus_width == MMC_BUS_WIDTH_8)
		FUNC4(host, FUNC0(b, 128), SDHCI_BLOCK_SIZE);
	else
		FUNC4(host, FUNC0(b, 64), SDHCI_BLOCK_SIZE);

	/*
	 * The tuning block is sent by the card to the host controller.
	 * So we set the TRNS_READ bit in the Transfer Mode register.
	 * This also takes care of setting DMA Enable and Multi Block
	 * Select in the same register to 0.
	 */
	FUNC4(host, SDHCI_TRNS_READ, SDHCI_TRANSFER_MODE);

	FUNC3(host, &cmd);

	host->cmd = NULL;

	FUNC2(host, &mrq);

	host->tuning_done = 0;

	FUNC6(&host->lock, flags);

	/* Wait for Buffer Read Ready interrupt */
	FUNC7(host->buf_ready_int, (host->tuning_done == 1),
			   FUNC1(50));

}