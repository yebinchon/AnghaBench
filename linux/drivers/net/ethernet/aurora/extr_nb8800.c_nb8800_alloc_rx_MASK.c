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
struct page {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct nb8800_rx_desc {TYPE_1__ desc; } ;
struct nb8800_rx_buf {unsigned long offset; struct page* page; } ;
struct nb8800_priv {struct nb8800_rx_buf* rx_bufs; struct nb8800_rx_desc* rx_descs; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct page*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 struct nb8800_priv* FUNC5 (struct net_device*) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 struct page* FUNC8 (void*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, unsigned int i, bool napi)
{
	struct nb8800_priv *priv = FUNC5(dev);
	struct nb8800_rx_desc *rxd = &priv->rx_descs[i];
	struct nb8800_rx_buf *rxb = &priv->rx_bufs[i];
	int size = FUNC0(RX_BUF_SIZE);
	dma_addr_t dma_addr;
	struct page *page;
	unsigned long offset;
	void *data;

	data = napi ? FUNC3(size) : FUNC4(size);
	if (!data)
		return -ENOMEM;

	page = FUNC8(data);
	offset = data - FUNC6(page);

	dma_addr = FUNC1(&dev->dev, page, offset, RX_BUF_SIZE,
				DMA_FROM_DEVICE);

	if (FUNC2(&dev->dev, dma_addr)) {
		FUNC7(data);
		return -ENOMEM;
	}

	rxb->page = page;
	rxb->offset = offset;
	rxd->desc.s_addr = dma_addr;

	return 0;
}