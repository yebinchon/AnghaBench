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
struct mmc_request {int /*<<< orphan*/  (* done ) (struct mmc_request*) ;scalar_t__ data; TYPE_1__* cmd; } ;
struct cvm_mmc_host {int /*<<< orphan*/  irq_handler_lock; scalar_t__ need_irq_handler_lock; int /*<<< orphan*/  (* release_bus ) (struct cvm_mmc_host*) ;int /*<<< orphan*/  (* dmar_fixup_done ) (struct cvm_mmc_host*) ;struct mmc_request* current_req; scalar_t__ dma_active; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int MIO_EMM_INT_BUF_DONE ; 
 int MIO_EMM_INT_CMD_DONE ; 
 int MIO_EMM_INT_CMD_ERR ; 
 int MIO_EMM_INT_DMA_DONE ; 
 int MIO_EMM_INT_DMA_ERR ; 
 int MIO_EMM_INT_SWITCH_ERR ; 
 scalar_t__ FUNC2 (struct cvm_mmc_host*) ; 
 int MIO_EMM_RSP_STS_DBUF ; 
 int MIO_EMM_RSP_STS_DMA_PEND ; 
 int MIO_EMM_RSP_STS_DMA_VAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct cvm_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cvm_mmc_host*,struct mmc_request*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct cvm_mmc_host*,scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct cvm_mmc_host*,struct mmc_request*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC16 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC17 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC18 (int,scalar_t__) ; 

irqreturn_t FUNC19(int irq, void *dev_id)
{
	struct cvm_mmc_host *host = dev_id;
	struct mmc_request *req;
	unsigned long flags = 0;
	u64 emm_int, rsp_sts;
	bool host_done;

	if (host->need_irq_handler_lock)
		FUNC13(&host->irq_handler_lock, flags);
	else
		FUNC3(&host->irq_handler_lock);

	/* Clear interrupt bits (write 1 clears ). */
	emm_int = FUNC11(host->base + FUNC1(host));
	FUNC18(emm_int, host->base + FUNC1(host));

	if (emm_int & MIO_EMM_INT_SWITCH_ERR)
		FUNC6(host);

	req = host->current_req;
	if (!req)
		goto out;

	rsp_sts = FUNC11(host->base + FUNC2(host));
	/*
	 * dma_val set means DMA is still in progress. Don't touch
	 * the request and wait for the interrupt indicating that
	 * the DMA is finished.
	 */
	if ((rsp_sts & MIO_EMM_RSP_STS_DMA_VAL) && host->dma_active)
		goto out;

	if (!host->dma_active && req->data &&
	    (emm_int & MIO_EMM_INT_BUF_DONE)) {
		unsigned int type = (rsp_sts >> 7) & 3;

		if (type == 1)
			FUNC8(host, req, rsp_sts & MIO_EMM_RSP_STS_DBUF);
		else if (type == 2)
			FUNC9(req);
	}

	host_done = emm_int & MIO_EMM_INT_CMD_DONE ||
		    emm_int & MIO_EMM_INT_DMA_DONE ||
		    emm_int & MIO_EMM_INT_CMD_ERR  ||
		    emm_int & MIO_EMM_INT_DMA_ERR;

	if (!(host_done && req->done))
		goto no_req_done;

	req->cmd->error = FUNC5(rsp_sts);

	if (host->dma_active && req->data)
		if (!FUNC10(host, req->data))
			goto no_req_done;

	FUNC12(host, req, rsp_sts);
	if ((emm_int & MIO_EMM_INT_DMA_ERR) &&
	    (rsp_sts & MIO_EMM_RSP_STS_DMA_PEND))
		FUNC7(host, rsp_sts);

	host->current_req = NULL;
	req->done(req);

no_req_done:
	if (host->dmar_fixup_done)
		host->dmar_fixup_done(host);
	if (host_done)
		host->release_bus(host);
out:
	if (host->need_irq_handler_lock)
		FUNC14(&host->irq_handler_lock, flags);
	else
		FUNC4(&host->irq_handler_lock);
	return FUNC0(emm_int != 0);
}