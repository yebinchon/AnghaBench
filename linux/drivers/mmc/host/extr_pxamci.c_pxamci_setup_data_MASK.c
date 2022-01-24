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
struct pxamci_host {unsigned long long clkrate; unsigned int clkrt; int /*<<< orphan*/  dma_cookie; int /*<<< orphan*/  mmc; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_dir; struct dma_chan* dma_chan_tx; struct dma_chan* dma_chan_rx; TYPE_1__* res; scalar_t__ base; struct mmc_data* data; } ;
struct mmc_data {unsigned int blocks; unsigned int blksz; unsigned int timeout_clks; int flags; int /*<<< orphan*/  sg; int /*<<< orphan*/  sg_len; scalar_t__ timeout_ns; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int direction; scalar_t__ dst_addr; scalar_t__ src_addr; void* dst_addr_width; void* src_addr_width; } ;
struct dma_chan {TYPE_2__* device; } ;
struct dma_async_tx_descriptor {struct pxamci_host* callback_param; int /*<<< orphan*/  callback; } ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ start; } ;

/* Variables and functions */
 int DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PREP_INTERRUPT ; 
 void* DMA_SLAVE_BUSWIDTH_1_BYTE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MMC_BLKLEN ; 
 int MMC_DATA_READ ; 
 scalar_t__ MMC_NOB ; 
 scalar_t__ MMC_RDTO ; 
 scalar_t__ MMC_RXFIFO ; 
 scalar_t__ MMC_TXFIFO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (struct dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dma_chan*,struct dma_slave_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pxamci_dma_irq ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct pxamci_host *host, struct mmc_data *data)
{
	struct dma_async_tx_descriptor *tx;
	enum dma_transfer_direction direction;
	struct dma_slave_config	config;
	struct dma_chan *chan;
	unsigned int nob = data->blocks;
	unsigned long long clks;
	unsigned int timeout;
	int ret;

	host->data = data;

	FUNC10(nob, host->base + MMC_NOB);
	FUNC10(data->blksz, host->base + MMC_BLKLEN);

	clks = (unsigned long long)data->timeout_ns * host->clkrate;
	FUNC7(clks, 1000000000UL);
	timeout = (unsigned int)clks + (data->timeout_clks << host->clkrt);
	FUNC10((timeout + 255) / 256, host->base + MMC_RDTO);

	FUNC8(&config, 0, sizeof(config));
	config.src_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	config.dst_addr_width = DMA_SLAVE_BUSWIDTH_1_BYTE;
	config.src_addr = host->res->start + MMC_RXFIFO;
	config.dst_addr = host->res->start + MMC_TXFIFO;
	config.src_maxburst = 32;
	config.dst_maxburst = 32;

	if (data->flags & MMC_DATA_READ) {
		host->dma_dir = DMA_FROM_DEVICE;
		direction = DMA_DEV_TO_MEM;
		chan = host->dma_chan_rx;
	} else {
		host->dma_dir = DMA_TO_DEVICE;
		direction = DMA_MEM_TO_DEV;
		chan = host->dma_chan_tx;
	}

	config.direction = direction;

	ret = FUNC5(chan, &config);
	if (ret < 0) {
		FUNC1(FUNC9(host->mmc), "dma slave config failed\n");
		return;
	}

	host->dma_len = FUNC3(chan->device->dev, data->sg, data->sg_len,
				   host->dma_dir);

	tx = FUNC4(chan, data->sg, host->dma_len, direction,
				     DMA_PREP_INTERRUPT);
	if (!tx) {
		FUNC1(FUNC9(host->mmc), "prep_slave_sg() failed\n");
		return;
	}

	if (!(data->flags & MMC_DATA_READ)) {
		tx->callback = pxamci_dma_irq;
		tx->callback_param = host;
	}

	host->dma_cookie = FUNC6(tx);

	/*
	 * workaround for erratum #91:
	 * only start DMA now if we are doing a read,
	 * otherwise we wait until CMD/RESP has finished
	 * before starting DMA.
	 */
	if (!FUNC0() || data->flags & MMC_DATA_READ)
		FUNC2(chan);
}