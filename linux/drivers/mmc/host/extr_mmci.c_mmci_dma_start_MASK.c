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
struct mmci_host {scalar_t__ base; TYPE_1__* ops; int /*<<< orphan*/  mmc; int /*<<< orphan*/  use_dma; struct mmc_data* data; } ;
struct mmc_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  blocks; int /*<<< orphan*/  blksz; int /*<<< orphan*/  sg_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dma_start ) (struct mmci_host*,unsigned int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int MCI_DATAENDMASK ; 
 scalar_t__ MMCIMASK0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mmci_host*,struct mmc_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mmci_host*,unsigned int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mmci_host*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

int FUNC7(struct mmci_host *host, unsigned int datactrl)
{
	struct mmc_data *data = host->data;
	int ret;

	if (!host->use_dma)
		return -EINVAL;

	ret = FUNC2(host, data, false);
	if (ret)
		return ret;

	if (!host->ops || !host->ops->dma_start)
		return -EINVAL;

	/* Okay, go for it. */
	FUNC0(FUNC1(host->mmc),
		 "Submit MMCI DMA job, sglen %d blksz %04x blks %04x flags %08x\n",
		 data->sg_len, data->blksz, data->blocks, data->flags);

	host->ops->dma_start(host, &datactrl);

	/* Trigger the DMA transfer */
	FUNC3(host, datactrl);

	/*
	 * Let the MMCI say when the data is ended and it's time
	 * to fire next DMA request. When that happens, MMCI will
	 * call mmci_data_end()
	 */
	FUNC6(FUNC4(host->base + MMCIMASK0) | MCI_DATAENDMASK,
	       host->base + MMCIMASK0);
	return 0;
}