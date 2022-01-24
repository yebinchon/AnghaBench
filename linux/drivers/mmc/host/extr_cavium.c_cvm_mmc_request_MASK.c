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
typedef  int u64 ;
struct mmc_request {struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_command {int opcode; int arg; TYPE_1__* data; } ;
struct cvm_mmc_slot {int /*<<< orphan*/  bus_id; struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {int dma_active; scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* int_enable ) (struct cvm_mmc_host*,int) ;struct mmc_request* current_req; int /*<<< orphan*/  (* acquire_bus ) (struct cvm_mmc_host*) ;} ;
struct cvm_mmc_cr_mods {int ctype_xor; int rtype_xor; } ;
struct TYPE_2__ {int flags; int blocks; int blksz; scalar_t__ timeout_ns; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_CMD_ARG ; 
 int /*<<< orphan*/  MIO_EMM_CMD_CTYPE_XOR ; 
 int /*<<< orphan*/  MIO_EMM_CMD_IDX ; 
 int /*<<< orphan*/  MIO_EMM_CMD_OFFSET ; 
 int /*<<< orphan*/  MIO_EMM_CMD_RTYPE_XOR ; 
 int /*<<< orphan*/  MIO_EMM_CMD_VAL ; 
 int MIO_EMM_INT_CMD_DONE ; 
 int MIO_EMM_INT_CMD_ERR ; 
 scalar_t__ FUNC2 (struct cvm_mmc_host*) ; 
 int MIO_EMM_RSP_STS_CMD_VAL ; 
 int MIO_EMM_RSP_STS_DMA_PEND ; 
 int MIO_EMM_RSP_STS_DMA_VAL ; 
 int MIO_EMM_RSP_STS_SWITCH_VAL ; 
 scalar_t__ FUNC3 (struct cvm_mmc_host*) ; 
 scalar_t__ MMC_CMD_ADTC ; 
 int MMC_DATA_READ ; 
 int MMC_READ_MULTIPLE_BLOCK ; 
 int MMC_WRITE_MULTIPLE_BLOCK ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_request*) ; 
 void FUNC5 (struct mmc_host*,struct mmc_request*) ; 
 struct cvm_mmc_cr_mods FUNC6 (struct mmc_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct cvm_mmc_slot*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cvm_mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct cvm_mmc_host*,struct mmc_request*) ; 
 scalar_t__ FUNC11 (struct mmc_command*) ; 
 struct cvm_mmc_slot* FUNC12 (struct mmc_host*) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cvm_mmc_slot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct cvm_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC20(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct cvm_mmc_slot *slot = FUNC12(mmc);
	struct cvm_mmc_host *host = slot->host;
	struct mmc_command *cmd = mrq->cmd;
	struct cvm_mmc_cr_mods mods;
	u64 emm_cmd, rsp_sts;
	int retries = 100;

	/*
	 * Note about locking:
	 * All MMC devices share the same bus and controller. Allow only a
	 * single user of the bootbus/MMC bus at a time. The lock is acquired
	 * on all entry points from the MMC layer.
	 *
	 * For requests the lock is only released after the completion
	 * interrupt!
	 */
	host->acquire_bus(host);

	if (cmd->opcode == MMC_READ_MULTIPLE_BLOCK ||
	    cmd->opcode == MMC_WRITE_MULTIPLE_BLOCK)
		return FUNC5(mmc, mrq);

	FUNC7(slot);

	mods = FUNC6(cmd);

	FUNC4(host->current_req);
	host->current_req = mrq;

	if (cmd->data) {
		if (cmd->data->flags & MMC_DATA_READ)
			FUNC9(host, mrq);
		else
			FUNC10(host, mrq);

		if (cmd->data->timeout_ns)
			FUNC15(slot, cmd->data->timeout_ns);
	} else
		FUNC15(slot, 0);

	host->dma_active = false;
	host->int_enable(host, MIO_EMM_INT_CMD_DONE | MIO_EMM_INT_CMD_ERR);

	emm_cmd = FUNC0(MIO_EMM_CMD_VAL, 1) |
		  FUNC0(MIO_EMM_CMD_CTYPE_XOR, mods.ctype_xor) |
		  FUNC0(MIO_EMM_CMD_RTYPE_XOR, mods.rtype_xor) |
		  FUNC0(MIO_EMM_CMD_IDX, cmd->opcode) |
		  FUNC0(MIO_EMM_CMD_ARG, cmd->arg);
	FUNC14(&emm_cmd, slot->bus_id);
	if (cmd->data && FUNC11(cmd) == MMC_CMD_ADTC)
		emm_cmd |= FUNC0(MIO_EMM_CMD_OFFSET,
				64 - ((cmd->data->blocks * cmd->data->blksz) / 8));

	FUNC19(0, host->base + FUNC3(host));

retry:
	rsp_sts = FUNC13(host->base + FUNC2(host));
	if (rsp_sts & MIO_EMM_RSP_STS_DMA_VAL ||
	    rsp_sts & MIO_EMM_RSP_STS_CMD_VAL ||
	    rsp_sts & MIO_EMM_RSP_STS_SWITCH_VAL ||
	    rsp_sts & MIO_EMM_RSP_STS_DMA_PEND) {
		FUNC18(10);
		if (--retries)
			goto retry;
	}
	if (!retries)
		FUNC8(host->dev, "Bad status: %llx before command write\n", rsp_sts);
	FUNC19(emm_cmd, host->base + FUNC1(host));
}