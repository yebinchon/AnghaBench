#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mmc_data {int /*<<< orphan*/  stop; int /*<<< orphan*/  mrq; TYPE_2__* sg; } ;
struct goldfish_mmc_host {int /*<<< orphan*/ * mrq; scalar_t__ sg_len; TYPE_1__* data; int /*<<< orphan*/  virt_base; scalar_t__ dma_in_use; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_5__ {scalar_t__ length; } ;
struct TYPE_4__ {int /*<<< orphan*/  bytes_xfered; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct goldfish_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct goldfish_mmc_host*) ; 
 int FUNC4 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct goldfish_mmc_host *host,
				   struct mmc_data *data)
{
	if (host->dma_in_use) {
		enum dma_data_direction dma_data_dir;

		dma_data_dir = FUNC4(data);

		if (dma_data_dir == DMA_FROM_DEVICE) {
			/*
			 * We don't really have DMA, so we need
			 * to copy from our platform driver buffer
			 */
			FUNC6(data->sg, 1, host->virt_base,
					data->sg->length);
		}
		host->data->bytes_xfered += data->sg->length;
		FUNC0(FUNC2(FUNC3(host)), data->sg,
			     host->sg_len, dma_data_dir);
	}

	host->data = NULL;
	host->sg_len = 0;

	/*
	 * NOTE:  MMC layer will sometimes poll-wait CMD13 next, issuing
	 * dozens of requests until the card finishes writing data.
	 * It'd be cheaper to just wait till an EOFB interrupt arrives...
	 */

	if (!data->stop) {
		host->mrq = NULL;
		FUNC5(FUNC3(host), data->mrq);
		return;
	}

	FUNC1(host, data->stop);
}