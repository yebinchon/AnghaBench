#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;TYPE_2__* cmd; struct mmc_data* data; TYPE_1__* stop; } ;
struct mmc_host {TYPE_3__* card; } ;
struct mmc_data {int blocks; int blksz; scalar_t__ timeout_ns; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct cvm_mmc_slot {struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {int dma_active; int /*<<< orphan*/  (* release_bus ) (struct cvm_mmc_host*) ;scalar_t__ base; int /*<<< orphan*/  (* dmar_fixup ) (struct cvm_mmc_host*,TYPE_2__*,struct mmc_data*,int) ;int /*<<< orphan*/  (* int_enable ) (struct cvm_mmc_host*,int) ;int /*<<< orphan*/ * dev; struct mmc_request* current_req; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
struct TYPE_4__ {scalar_t__ opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (struct cvm_mmc_host*) ; 
 int MIO_EMM_INT_CMD_ERR ; 
 int MIO_EMM_INT_DMA_DONE ; 
 int MIO_EMM_INT_DMA_ERR ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 scalar_t__ MMC_STOP_TRANSMISSION ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct cvm_mmc_slot*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 struct cvm_mmc_slot* FUNC6 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 int FUNC8 (struct cvm_mmc_host*,struct mmc_data*) ; 
 int FUNC9 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct cvm_mmc_slot*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct cvm_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cvm_mmc_host*,TYPE_2__*,struct mmc_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC14 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct mmc_host *mmc,
				struct mmc_request *mrq)
{
	struct cvm_mmc_slot *slot = FUNC6(mmc);
	struct cvm_mmc_host *host = slot->host;
	struct mmc_data *data;
	u64 emm_dma, addr;

	if (!mrq->data || !mrq->data->sg || !mrq->data->sg_len ||
	    !mrq->stop || mrq->stop->opcode != MMC_STOP_TRANSMISSION) {
		FUNC4(&mmc->card->dev,
			"Error: cmv_mmc_dma_request no data\n");
		goto error;
	}

	FUNC3(slot);

	data = mrq->data;
	FUNC7("DMA request  blocks: %d  block_size: %d  total_size: %d\n",
		 data->blocks, data->blksz, data->blocks * data->blksz);
	if (data->timeout_ns)
		FUNC10(slot, data->timeout_ns);

	FUNC2(host->current_req);
	host->current_req = mrq;

	emm_dma = FUNC9(mmc, mrq);
	addr = FUNC8(host, data);
	if (!addr) {
		FUNC4(host->dev, "prepare_dma failed\n");
		goto error;
	}

	host->dma_active = true;
	host->int_enable(host, MIO_EMM_INT_CMD_ERR | MIO_EMM_INT_DMA_DONE |
			 MIO_EMM_INT_DMA_ERR);

	if (host->dmar_fixup)
		host->dmar_fixup(host, mrq->cmd, data, addr);

	/*
	 * If we have a valid SD card in the slot, we set the response
	 * bit mask to check for CRC errors and timeouts only.
	 * Otherwise, use the default power reset value.
	 */
	if (FUNC5(mmc->card))
		FUNC15(0x00b00000ull, host->base + FUNC1(host));
	else
		FUNC15(0xe4390080ull, host->base + FUNC1(host));
	FUNC15(emm_dma, host->base + FUNC0(host));
	return;

error:
	mrq->cmd->error = -EINVAL;
	if (mrq->done)
		mrq->done(mrq);
	host->release_bus(host);
}