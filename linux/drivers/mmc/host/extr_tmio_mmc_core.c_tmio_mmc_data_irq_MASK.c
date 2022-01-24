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
typedef  int u32 ;
struct tmio_mmc_host {int /*<<< orphan*/  lock; scalar_t__ dma_on; TYPE_1__* pdata; struct mmc_data* data; } ;
struct mmc_data {int flags; int /*<<< orphan*/  error; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_STATUS ; 
 int /*<<< orphan*/  EILSEQ ; 
 int MMC_DATA_READ ; 
 int MMC_DATA_WRITE ; 
 int TMIO_MASK_READOP ; 
 int TMIO_MASK_WRITEOP ; 
 int TMIO_MMC_HAS_IDLE_WAIT ; 
 int TMIO_STAT_CMD_BUSY ; 
 unsigned int TMIO_STAT_CRCFAIL ; 
 int TMIO_STAT_DATAEND ; 
 int TMIO_STAT_SCLKDIVEN ; 
 unsigned int TMIO_STAT_STOPBIT_ERR ; 
 unsigned int TMIO_STAT_TXUNDERRUN ; 
 int FUNC0 (struct tmio_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tmio_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmio_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tmio_mmc_host*) ; 

__attribute__((used)) static void FUNC6(struct tmio_mmc_host *host, unsigned int stat)
{
	struct mmc_data *data;

	FUNC1(&host->lock);
	data = host->data;

	if (!data)
		goto out;

	if (stat & TMIO_STAT_CRCFAIL || stat & TMIO_STAT_STOPBIT_ERR ||
	    stat & TMIO_STAT_TXUNDERRUN)
		data->error = -EILSEQ;
	if (host->dma_on && (data->flags & MMC_DATA_WRITE)) {
		u32 status = FUNC0(host, CTL_STATUS);
		bool done = false;

		/*
		 * Has all data been written out yet? Testing on SuperH showed,
		 * that in most cases the first interrupt comes already with the
		 * BUSY status bit clear, but on some operations, like mount or
		 * in the beginning of a write / sync / umount, there is one
		 * DATAEND interrupt with the BUSY bit set, in this cases
		 * waiting for one more interrupt fixes the problem.
		 */
		if (host->pdata->flags & TMIO_MMC_HAS_IDLE_WAIT) {
			if (status & TMIO_STAT_SCLKDIVEN)
				done = true;
		} else {
			if (!(status & TMIO_STAT_CMD_BUSY))
				done = true;
		}

		if (done) {
			FUNC4(host, TMIO_STAT_DATAEND);
			FUNC3(host);
		}
	} else if (host->dma_on && (data->flags & MMC_DATA_READ)) {
		FUNC4(host, TMIO_STAT_DATAEND);
		FUNC3(host);
	} else {
		FUNC5(host);
		FUNC4(host, TMIO_MASK_READOP | TMIO_MASK_WRITEOP);
	}
out:
	FUNC2(&host->lock);
}