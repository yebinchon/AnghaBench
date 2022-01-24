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
typedef  int /*<<< orphan*/  u64 ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; scalar_t__ error; } ;
struct cvm_mmc_host {int /*<<< orphan*/  dev; scalar_t__ dma_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_DMA_FIFO_CFG_COUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct cvm_mmc_host *host, struct mmc_data *data)
{
	u64 fifo_cfg;
	int count;

	/* Check if there are any pending requests left */
	fifo_cfg = FUNC6(host->dma_base + FUNC2(host));
	count = FUNC1(MIO_EMM_DMA_FIFO_CFG_COUNT, fifo_cfg);
	if (count)
		FUNC3(host->dev, "%u requests still pending\n", count);

	data->bytes_xfered = data->blocks * data->blksz;
	data->error = 0;

	/* Clear and disable FIFO */
	FUNC7(FUNC0(16), host->dma_base + FUNC2(host));
	FUNC4(host->dev, data->sg, data->sg_len, FUNC5(data));
	return 1;
}