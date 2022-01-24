#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wbsd_host {scalar_t__ dma; TYPE_2__* mrq; int /*<<< orphan*/  mmc; } ;
struct mmc_data {int bytes_xfered; int blksz; int error; int flags; scalar_t__ stop; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int blocks; int blksz; } ;

/* Variables and functions */
 int EIO ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WBSD_BLOCK_READ ; 
 int WBSD_BLOCK_WRITE ; 
 int /*<<< orphan*/  WBSD_IDX_DMA ; 
 int /*<<< orphan*/  WBSD_IDX_STATUS ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct wbsd_host*,struct mmc_data*) ; 
 int FUNC9 (struct wbsd_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wbsd_host*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct wbsd_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct wbsd_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct wbsd_host *host, struct mmc_data *data)
{
	unsigned long dmaflags;
	int count;
	u8 status;

	FUNC0(host->mrq == NULL);

	/*
	 * Send a stop command if needed.
	 */
	if (data->stop)
		FUNC11(host, data->stop);

	/*
	 * Wait for the controller to leave data
	 * transfer state.
	 */
	do {
		status = FUNC9(host, WBSD_IDX_STATUS);
	} while (status & (WBSD_BLOCK_READ | WBSD_BLOCK_WRITE));

	/*
	 * DMA transfer?
	 */
	if (host->dma >= 0) {
		/*
		 * Disable DMA on the host.
		 */
		FUNC12(host, WBSD_IDX_DMA, 0);

		/*
		 * Turn of ISA DMA controller.
		 */
		dmaflags = FUNC1();
		FUNC3(host->dma);
		FUNC2(host->dma);
		count = FUNC4(host->dma);
		FUNC7(dmaflags);

		data->bytes_xfered = host->mrq->data->blocks *
			host->mrq->data->blksz - count;
		data->bytes_xfered -= data->bytes_xfered % data->blksz;

		/*
		 * Any leftover data?
		 */
		if (count) {
			FUNC6("%s: Incomplete DMA transfer. "
				"%d bytes left.\n",
				FUNC5(host->mmc), count);

			if (!data->error)
				data->error = -EIO;
		} else {
			/*
			 * Transfer data from DMA buffer to
			 * SG list.
			 */
			if (data->flags & MMC_DATA_READ)
				FUNC8(host, data);
		}

		if (data->error) {
			if (data->bytes_xfered)
				data->bytes_xfered -= data->blksz;
		}
	}

	FUNC10(host, host->mrq);
}