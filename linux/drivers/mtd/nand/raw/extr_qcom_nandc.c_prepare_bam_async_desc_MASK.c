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
struct scatterlist {int dummy; } ;
struct qcom_nand_controller {int /*<<< orphan*/  desc_list; struct dma_chan* cmd_chan; int /*<<< orphan*/  dev; struct dma_chan* tx_chan; struct bam_transaction* bam_txn; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct desc_info {unsigned int sgl_cnt; int /*<<< orphan*/  node; struct dma_async_tx_descriptor* dma_desc; void* dir; struct scatterlist* bam_sgl; } ;
struct bam_transaction {size_t cmd_sgl_start; unsigned int cmd_sgl_pos; size_t tx_sgl_start; unsigned int tx_sgl_pos; size_t rx_sgl_start; unsigned int rx_sgl_pos; struct dma_async_tx_descriptor* last_data_desc; struct dma_async_tx_descriptor* last_cmd_desc; struct scatterlist* data_sgl; struct scatterlist* cmd_sgl; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;

/* Variables and functions */
 int DMA_DEV_TO_MEM ; 
 void* DMA_FROM_DEVICE ; 
 int DMA_MEM_TO_DEV ; 
 void* DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,unsigned int,void*) ; 
 struct dma_async_tx_descriptor* FUNC3 (struct dma_chan*,struct scatterlist*,unsigned int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct desc_info*) ; 
 struct desc_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC8(struct qcom_nand_controller *nandc,
				  struct dma_chan *chan,
				  unsigned long flags)
{
	struct desc_info *desc;
	struct scatterlist *sgl;
	unsigned int sgl_cnt;
	int ret;
	struct bam_transaction *bam_txn = nandc->bam_txn;
	enum dma_transfer_direction dir_eng;
	struct dma_async_tx_descriptor *dma_desc;

	desc = FUNC5(sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	if (chan == nandc->cmd_chan) {
		sgl = &bam_txn->cmd_sgl[bam_txn->cmd_sgl_start];
		sgl_cnt = bam_txn->cmd_sgl_pos - bam_txn->cmd_sgl_start;
		bam_txn->cmd_sgl_start = bam_txn->cmd_sgl_pos;
		dir_eng = DMA_MEM_TO_DEV;
		desc->dir = DMA_TO_DEVICE;
	} else if (chan == nandc->tx_chan) {
		sgl = &bam_txn->data_sgl[bam_txn->tx_sgl_start];
		sgl_cnt = bam_txn->tx_sgl_pos - bam_txn->tx_sgl_start;
		bam_txn->tx_sgl_start = bam_txn->tx_sgl_pos;
		dir_eng = DMA_MEM_TO_DEV;
		desc->dir = DMA_TO_DEVICE;
	} else {
		sgl = &bam_txn->data_sgl[bam_txn->rx_sgl_start];
		sgl_cnt = bam_txn->rx_sgl_pos - bam_txn->rx_sgl_start;
		bam_txn->rx_sgl_start = bam_txn->rx_sgl_pos;
		dir_eng = DMA_DEV_TO_MEM;
		desc->dir = DMA_FROM_DEVICE;
	}

	FUNC7(sgl + sgl_cnt - 1);
	ret = FUNC1(nandc->dev, sgl, sgl_cnt, desc->dir);
	if (ret == 0) {
		FUNC0(nandc->dev, "failure in mapping desc\n");
		FUNC4(desc);
		return -ENOMEM;
	}

	desc->sgl_cnt = sgl_cnt;
	desc->bam_sgl = sgl;

	dma_desc = FUNC3(chan, sgl, sgl_cnt, dir_eng,
					   flags);

	if (!dma_desc) {
		FUNC0(nandc->dev, "failure in prep desc\n");
		FUNC2(nandc->dev, sgl, sgl_cnt, desc->dir);
		FUNC4(desc);
		return -EINVAL;
	}

	desc->dma_desc = dma_desc;

	/* update last data/command descriptor */
	if (chan == nandc->cmd_chan)
		bam_txn->last_cmd_desc = dma_desc;
	else
		bam_txn->last_data_desc = dma_desc;

	FUNC6(&desc->node, &nandc->desc_list);

	return 0;
}