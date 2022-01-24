#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ispstat {int buf_size; int /*<<< orphan*/  dma_ch; TYPE_2__* isp; TYPE_1__* active_buf; } ;
struct dma_slave_config {int src_maxburst; int /*<<< orphan*/  src_addr_width; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;struct ispstat* callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  cfg ;
struct TYPE_6__ {int /*<<< orphan*/  dev; scalar_t__ mmio_hist_base_phys; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int /*<<< orphan*/  ISPHIST_ADDR ; 
 int /*<<< orphan*/  ISPHIST_CNT ; 
 int /*<<< orphan*/  ISPHIST_CNT_CLEAR ; 
 scalar_t__ ISPHIST_DATA ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_HIST ; 
 int STAT_BUF_WAITING_DMA ; 
 int STAT_NO_BUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct dma_slave_config*) ; 
 int /*<<< orphan*/  hist_dma_cb ; 
 int /*<<< orphan*/  FUNC5 (struct ispstat*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_slave_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_async_tx_descriptor*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ispstat *hist)
{
	dma_addr_t dma_addr = hist->active_buf->dma_addr;
	struct dma_async_tx_descriptor *tx;
	struct dma_slave_config cfg;
	dma_cookie_t cookie;
	int ret;

	if (FUNC11(!dma_addr)) {
		FUNC0(hist->isp->dev, "hist: invalid DMA buffer address\n");
		goto error;
	}

	FUNC7(hist->isp, 0, OMAP3_ISP_IOMEM_HIST, ISPHIST_ADDR);
	FUNC6(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT,
		    ISPHIST_CNT_CLEAR);
	FUNC9(hist->isp);

	FUNC8(&cfg, 0, sizeof(cfg));
	cfg.src_addr = hist->isp->mmio_hist_base_phys + ISPHIST_DATA;
	cfg.src_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
	cfg.src_maxburst = hist->buf_size / 4;

	ret = FUNC4(hist->dma_ch, &cfg);
	if (ret < 0) {
		FUNC0(hist->isp->dev,
			"hist: DMA slave configuration failed\n");
		goto error;
	}

	tx = FUNC3(hist->dma_ch, dma_addr,
					 hist->buf_size, DMA_DEV_TO_MEM,
					 DMA_CTRL_ACK);
	if (tx == NULL) {
		FUNC0(hist->isp->dev,
			"hist: DMA slave preparation failed\n");
		goto error;
	}

	tx->callback = hist_dma_cb;
	tx->callback_param = hist;
	cookie = tx->tx_submit(tx);
	if (FUNC2(cookie)) {
		FUNC0(hist->isp->dev, "hist: DMA submission failed\n");
		goto error;
	}

	FUNC1(hist->dma_ch);

	return STAT_BUF_WAITING_DMA;

error:
	FUNC5(hist);
	return STAT_NO_BUF;
}