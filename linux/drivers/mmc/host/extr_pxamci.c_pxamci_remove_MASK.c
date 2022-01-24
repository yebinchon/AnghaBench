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
struct pxamci_host {int /*<<< orphan*/  dma_chan_tx; int /*<<< orphan*/  dma_chan_rx; scalar_t__ base; TYPE_1__* pdata; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ *,struct mmc_host*) ;} ;

/* Variables and functions */
 int CLK_IS_OFF ; 
 int DATA_TRAN_DONE ; 
 int END_CMD_RES ; 
 scalar_t__ MMC_I_MASK ; 
 int PRG_DONE ; 
 int RXFIFO_RD_REQ ; 
 int STOP_CMD ; 
 int TXFIFO_WR_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 struct pxamci_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 struct mmc_host* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxamci_host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct mmc_host *mmc = FUNC5(pdev);

	if (mmc) {
		struct pxamci_host *host = FUNC3(mmc);

		FUNC4(mmc);

		if (host->pdata && host->pdata->exit)
			host->pdata->exit(&pdev->dev, mmc);

		FUNC6(host);
		FUNC8(TXFIFO_WR_REQ|RXFIFO_RD_REQ|CLK_IS_OFF|STOP_CMD|
		       END_CMD_RES|PRG_DONE|DATA_TRAN_DONE,
		       host->base + MMC_I_MASK);

		FUNC1(host->dma_chan_rx);
		FUNC1(host->dma_chan_tx);
		FUNC0(host->dma_chan_rx);
		FUNC0(host->dma_chan_tx);

		FUNC2(mmc);
	}

	return 0;
}