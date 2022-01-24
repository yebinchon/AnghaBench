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
struct mmc_data {int flags; scalar_t__ blksz; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  error; } ;
struct dw_mci {int fifoth_val; scalar_t__ prev_blksz; scalar_t__ wm_aligned; int /*<<< orphan*/  irq_lock; scalar_t__ part_buf_count; scalar_t__ part_buf_start; int /*<<< orphan*/ * sg; int /*<<< orphan*/  sg_miter; struct mmc_data* data; int /*<<< orphan*/  dir_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  DW_MCI_RECV_STATUS ; 
 int /*<<< orphan*/  DW_MCI_SEND_STATUS ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FIFOTH ; 
 int /*<<< orphan*/  INTMASK ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  RINTSTS ; 
 int SDMMC_CTRL_DMA_ENABLE ; 
 int SDMMC_INT_RXDR ; 
 int SDMMC_INT_TXDR ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_FROM_SG ; 
 int SG_MITER_TO_SG ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_mci*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,struct mmc_data*) ; 
 scalar_t__ FUNC3 (struct dw_mci*,struct mmc_data*) ; 
 int FUNC4 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct dw_mci *host, struct mmc_data *data)
{
	unsigned long irqflags;
	int flags = SG_MITER_ATOMIC;
	u32 temp;

	data->error = -EINPROGRESS;

	FUNC0(host->data);
	host->sg = NULL;
	host->data = data;

	if (data->flags & MMC_DATA_READ)
		host->dir_status = DW_MCI_RECV_STATUS;
	else
		host->dir_status = DW_MCI_SEND_STATUS;

	FUNC2(host, data);

	if (FUNC3(host, data)) {
		if (host->data->flags & MMC_DATA_READ)
			flags |= SG_MITER_TO_SG;
		else
			flags |= SG_MITER_FROM_SG;

		FUNC6(&host->sg_miter, data->sg, data->sg_len, flags);
		host->sg = data->sg;
		host->part_buf_start = 0;
		host->part_buf_count = 0;

		FUNC5(host, RINTSTS, SDMMC_INT_TXDR | SDMMC_INT_RXDR);

		FUNC7(&host->irq_lock, irqflags);
		temp = FUNC4(host, INTMASK);
		temp |= SDMMC_INT_TXDR | SDMMC_INT_RXDR;
		FUNC5(host, INTMASK, temp);
		FUNC8(&host->irq_lock, irqflags);

		temp = FUNC4(host, CTRL);
		temp &= ~SDMMC_CTRL_DMA_ENABLE;
		FUNC5(host, CTRL, temp);

		/*
		 * Use the initial fifoth_val for PIO mode. If wm_algined
		 * is set, we set watermark same as data size.
		 * If next issued data may be transfered by DMA mode,
		 * prev_blksz should be invalidated.
		 */
		if (host->wm_aligned)
			FUNC1(host, data);
		else
			FUNC5(host, FIFOTH, host->fifoth_val);
		host->prev_blksz = 0;
	} else {
		/*
		 * Keep the current block size.
		 * It will be used to decide whether to update
		 * fifoth register next time.
		 */
		host->prev_blksz = data->blksz;
	}
}