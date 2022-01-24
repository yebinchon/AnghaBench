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
struct dma_async_tx_descriptor {int /*<<< orphan*/ * callback_param; int /*<<< orphan*/  callback; } ;
struct atmel_nand_controller {int /*<<< orphan*/  dev; int /*<<< orphan*/  dmac; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMA_CTRL_ACK ; 
 int DMA_FROM_DEVICE ; 
 int DMA_PREP_INTERRUPT ; 
 int EIO ; 
 int /*<<< orphan*/  atmel_nand_dma_transfer_finished ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 struct dma_async_tx_descriptor* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  finished ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct atmel_nand_controller *nc,
				   void *buf, dma_addr_t dev_dma, size_t len,
				   enum dma_data_direction dir)
{
	FUNC0(finished);
	dma_addr_t src_dma, dst_dma, buf_dma;
	struct dma_async_tx_descriptor *tx;
	dma_cookie_t cookie;

	buf_dma = FUNC4(nc->dev, buf, len, dir);
	if (FUNC5(nc->dev, dev_dma)) {
		FUNC2(nc->dev,
			"Failed to prepare a buffer for DMA access\n");
		goto err;
	}

	if (dir == DMA_FROM_DEVICE) {
		src_dma = dev_dma;
		dst_dma = buf_dma;
	} else {
		src_dma = buf_dma;
		dst_dma = dev_dma;
	}

	tx = FUNC8(nc->dmac, dst_dma, src_dma, len,
				       DMA_CTRL_ACK | DMA_PREP_INTERRUPT);
	if (!tx) {
		FUNC2(nc->dev, "Failed to prepare DMA memcpy\n");
		goto err_unmap;
	}

	tx->callback = atmel_nand_dma_transfer_finished;
	tx->callback_param = &finished;

	cookie = FUNC9(tx);
	if (FUNC6(cookie)) {
		FUNC2(nc->dev, "Failed to do DMA tx_submit\n");
		goto err_unmap;
	}

	FUNC3(nc->dmac);
	FUNC10(&finished);

	return 0;

err_unmap:
	FUNC7(nc->dev, buf_dma, len, dir);

err:
	FUNC1(nc->dev, "Fall back to CPU I/O\n");

	return -EIO;
}