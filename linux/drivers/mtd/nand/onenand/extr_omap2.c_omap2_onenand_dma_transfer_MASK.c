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
struct omap2_onenand {int /*<<< orphan*/  dma_chan; int /*<<< orphan*/  dma_done; TYPE_1__* pdev; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  (* tx_submit ) (struct dma_async_tx_descriptor*) ;int /*<<< orphan*/ * callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  omap2_onenand_dma_complete_func ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct omap2_onenand *c,
					     dma_addr_t src, dma_addr_t dst,
					     size_t count)
{
	struct dma_async_tx_descriptor *tx;
	dma_cookie_t cookie;

	tx = FUNC3(c->dma_chan, dst, src, count, 0);
	if (!tx) {
		FUNC0(&c->pdev->dev, "Failed to prepare DMA memcpy\n");
		return -EIO;
	}

	FUNC6(&c->dma_done);

	tx->callback = omap2_onenand_dma_complete_func;
	tx->callback_param = &c->dma_done;

	cookie = tx->tx_submit(tx);
	if (FUNC2(cookie)) {
		FUNC0(&c->pdev->dev, "Failed to do DMA tx_submit\n");
		return -EIO;
	}

	FUNC1(c->dma_chan);

	if (!FUNC8(&c->dma_done,
					    FUNC5(20))) {
		FUNC4(c->dma_chan);
		return -ETIMEDOUT;
	}

	return 0;
}