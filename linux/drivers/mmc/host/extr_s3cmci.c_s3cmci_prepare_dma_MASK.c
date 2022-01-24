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
struct s3cmci_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  dma; scalar_t__ base; int /*<<< orphan*/  prescaler; scalar_t__ sdidata; TYPE_1__* mem; } ;
struct mmc_data {int flags; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct dma_slave_config {int /*<<< orphan*/  direction; int /*<<< orphan*/  dst_addr_width; int /*<<< orphan*/  src_addr_width; scalar_t__ dst_addr; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {struct s3cmci_host* callback_param; int /*<<< orphan*/  callback; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int BOTH_DIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENOMEM ; 
 int MMC_DATA_WRITE ; 
 scalar_t__ S3C2410_SDIPRE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_data*) ; 
 int /*<<< orphan*/  s3cmci_dma_done_callback ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct s3cmci_host *host, struct mmc_data *data)
{
	int rw = data->flags & MMC_DATA_WRITE;
	struct dma_async_tx_descriptor *desc;
	struct dma_slave_config conf = {
		.src_addr = host->mem->start + host->sdidata,
		.dst_addr = host->mem->start + host->sdidata,
		.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
		.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES,
	};

	FUNC0((data->flags & BOTH_DIR) == BOTH_DIR);

	/* Restore prescaler value */
	FUNC9(host->prescaler, host->base + S3C2410_SDIPRE);

	if (!rw)
		conf.direction = DMA_DEV_TO_MEM;
	else
		conf.direction = DMA_MEM_TO_DEV;

	FUNC2(FUNC7(host->mmc), data->sg, data->sg_len,
		   FUNC8(data));

	FUNC5(host->dma, &conf);
	desc = FUNC4(host->dma, data->sg, data->sg_len,
		conf.direction,
		DMA_CTRL_ACK | DMA_PREP_INTERRUPT);
	if (!desc)
		goto unmap_exit;
	desc->callback = s3cmci_dma_done_callback;
	desc->callback_param = host;
	FUNC6(desc);
	FUNC1(host->dma);

	return 0;

unmap_exit:
	FUNC3(FUNC7(host->mmc), data->sg, data->sg_len,
		     FUNC8(data));
	return -ENOMEM;
}