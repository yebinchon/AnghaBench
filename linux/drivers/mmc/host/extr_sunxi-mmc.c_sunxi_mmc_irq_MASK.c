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
struct sunxi_mmc_host {int wait_dma; int int_sum; int sdio_imask; int /*<<< orphan*/  mmc; int /*<<< orphan*/  lock; struct mmc_request* mrq; } ;
struct mmc_request {int dummy; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_IDST ; 
 int /*<<< orphan*/  REG_IMASK ; 
 int /*<<< orphan*/  REG_MISTA ; 
 int /*<<< orphan*/  REG_RINTR ; 
 int SDXC_COMMAND_DONE ; 
 int SDXC_IDMAC_RECEIVE_INTERRUPT ; 
 int SDXC_INTERRUPT_DONE_BIT ; 
 int SDXC_INTERRUPT_ERROR_BIT ; 
 int SDXC_RESP_TIMEOUT ; 
 int SDXC_SDIO_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct mmc_request*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sunxi_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sunxi_mmc_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sunxi_mmc_host*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct sunxi_mmc_host *host = dev_id;
	struct mmc_request *mrq;
	u32 msk_int, idma_int;
	bool finalize = false;
	bool sdio_int = false;
	irqreturn_t ret = IRQ_HANDLED;

	FUNC6(&host->lock);

	idma_int  = FUNC2(host, REG_IDST);
	msk_int   = FUNC2(host, REG_MISTA);

	FUNC0(FUNC1(host->mmc), "irq: rq %p mi %08x idi %08x\n",
		host->mrq, msk_int, idma_int);

	mrq = host->mrq;
	if (mrq) {
		if (idma_int & SDXC_IDMAC_RECEIVE_INTERRUPT)
			host->wait_dma = false;

		host->int_sum |= msk_int;

		/* Wait for COMMAND_DONE on RESPONSE_TIMEOUT before finalize */
		if ((host->int_sum & SDXC_RESP_TIMEOUT) &&
				!(host->int_sum & SDXC_COMMAND_DONE))
			FUNC5(host, REG_IMASK,
				   host->sdio_imask | SDXC_COMMAND_DONE);
		/* Don't wait for dma on error */
		else if (host->int_sum & SDXC_INTERRUPT_ERROR_BIT)
			finalize = true;
		else if ((host->int_sum & SDXC_INTERRUPT_DONE_BIT) &&
				!host->wait_dma)
			finalize = true;
	}

	if (msk_int & SDXC_SDIO_INTERRUPT)
		sdio_int = true;

	FUNC5(host, REG_RINTR, msk_int);
	FUNC5(host, REG_IDST, idma_int);

	if (finalize)
		ret = FUNC8(host);

	FUNC7(&host->lock);

	if (finalize && ret == IRQ_HANDLED)
		FUNC3(host->mmc, mrq);

	if (sdio_int)
		FUNC4(host->mmc);

	return ret;
}