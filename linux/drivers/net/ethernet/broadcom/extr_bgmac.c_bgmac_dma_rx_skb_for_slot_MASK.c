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
struct device {int dummy; } ;
struct bgmac_slot_info {int /*<<< orphan*/  dma_addr; void* buf; } ;
struct bgmac_rx_header {void* flags; void* len; } ;
struct bgmac {int /*<<< orphan*/  net_dev; struct device* dma_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_RX_ALLOC_SIZE ; 
 int BGMAC_RX_BUF_OFFSET ; 
 int /*<<< orphan*/  BGMAC_RX_BUF_SIZE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct bgmac *bgmac,
				     struct bgmac_slot_info *slot)
{
	struct device *dma_dev = bgmac->dma_dev;
	dma_addr_t dma_addr;
	struct bgmac_rx_header *rx;
	void *buf;

	/* Alloc skb */
	buf = FUNC3(BGMAC_RX_ALLOC_SIZE);
	if (!buf)
		return -ENOMEM;

	/* Poison - if everything goes fine, hardware will overwrite it */
	rx = buf + BGMAC_RX_BUF_OFFSET;
	rx->len = FUNC0(0xdead);
	rx->flags = FUNC0(0xbeef);

	/* Map skb for the DMA */
	dma_addr = FUNC1(dma_dev, buf + BGMAC_RX_BUF_OFFSET,
				  BGMAC_RX_BUF_SIZE, DMA_FROM_DEVICE);
	if (FUNC2(dma_dev, dma_addr)) {
		FUNC4(bgmac->net_dev, "DMA mapping error\n");
		FUNC5(FUNC6(buf));
		return -ENOMEM;
	}

	/* Update the slot */
	slot->buf = buf;
	slot->dma_addr = dma_addr;

	return 0;
}