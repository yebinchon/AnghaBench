#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct device {int dummy; } ;
struct bgmac_slot_info {int /*<<< orphan*/  dma_addr; struct bgmac_rx_header* buf; } ;
struct bgmac_rx_header {int /*<<< orphan*/  flags; int /*<<< orphan*/  len; } ;
struct bgmac_dma_ring {int start; struct bgmac_slot_info* slots; scalar_t__ index_base; scalar_t__ mmio_base; } ;
struct bgmac_dma_desc {int dummy; } ;
struct bgmac {int /*<<< orphan*/  napi; TYPE_2__* net_dev; struct device* dma_dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int BGMAC_DMA_RX_STATDPTR ; 
 scalar_t__ BGMAC_DMA_RX_STATUS ; 
 int BGMAC_RX_ALLOC_SIZE ; 
 int BGMAC_RX_BUF_OFFSET ; 
 int /*<<< orphan*/  BGMAC_RX_BUF_SIZE ; 
 int BGMAC_RX_FRAME_OFFSET ; 
 size_t BGMAC_RX_RING_SLOTS ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct bgmac_slot_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,struct bgmac_dma_ring*,size_t) ; 
 scalar_t__ FUNC2 (struct bgmac*,struct bgmac_slot_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct bgmac*,struct bgmac_dma_ring*) ; 
 int FUNC4 (struct bgmac*,scalar_t__) ; 
 struct sk_buff* FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

__attribute__((used)) static int FUNC17(struct bgmac *bgmac, struct bgmac_dma_ring *ring,
			     int weight)
{
	u32 end_slot;
	int handled = 0;

	end_slot = FUNC4(bgmac, ring->mmio_base + BGMAC_DMA_RX_STATUS);
	end_slot &= BGMAC_DMA_RX_STATDPTR;
	end_slot -= ring->index_base;
	end_slot &= BGMAC_DMA_RX_STATDPTR;
	end_slot /= sizeof(struct bgmac_dma_desc);

	while (ring->start != end_slot) {
		struct device *dma_dev = bgmac->dma_dev;
		struct bgmac_slot_info *slot = &ring->slots[ring->start];
		struct bgmac_rx_header *rx = slot->buf + BGMAC_RX_BUF_OFFSET;
		struct sk_buff *skb;
		void *buf = slot->buf;
		dma_addr_t dma_addr = slot->dma_addr;
		u16 len, flags;

		do {
			/* Prepare new skb as replacement */
			if (FUNC2(bgmac, slot)) {
				FUNC0(dma_dev, slot);
				break;
			}

			/* Unmap buffer to make it accessible to the CPU */
			FUNC6(dma_dev, dma_addr,
					 BGMAC_RX_BUF_SIZE, DMA_FROM_DEVICE);

			/* Get info from the header */
			len = FUNC8(rx->len);
			flags = FUNC8(rx->flags);

			/* Check for poison and drop or pass the packet */
			if (len == 0xdead && flags == 0xbeef) {
				FUNC10(bgmac->net_dev, "Found poisoned packet at slot %d, DMA issue!\n",
					   ring->start);
				FUNC11(FUNC16(buf));
				bgmac->net_dev->stats.rx_errors++;
				break;
			}

			if (len > BGMAC_RX_ALLOC_SIZE) {
				FUNC10(bgmac->net_dev, "Found oversized packet at slot %d, DMA issue!\n",
					   ring->start);
				FUNC11(FUNC16(buf));
				bgmac->net_dev->stats.rx_length_errors++;
				bgmac->net_dev->stats.rx_errors++;
				break;
			}

			/* Omit CRC. */
			len -= ETH_FCS_LEN;

			skb = FUNC5(buf, BGMAC_RX_ALLOC_SIZE);
			if (FUNC15(!skb)) {
				FUNC10(bgmac->net_dev, "build_skb failed\n");
				FUNC11(FUNC16(buf));
				bgmac->net_dev->stats.rx_errors++;
				break;
			}
			FUNC14(skb, BGMAC_RX_FRAME_OFFSET +
				BGMAC_RX_BUF_OFFSET + len);
			FUNC13(skb, BGMAC_RX_FRAME_OFFSET +
				 BGMAC_RX_BUF_OFFSET);

			FUNC12(skb);
			skb->protocol = FUNC7(skb, bgmac->net_dev);
			bgmac->net_dev->stats.rx_bytes += len;
			bgmac->net_dev->stats.rx_packets++;
			FUNC9(&bgmac->napi, skb);
			handled++;
		} while (0);

		FUNC1(bgmac, ring, ring->start);

		if (++ring->start >= BGMAC_RX_RING_SLOTS)
			ring->start = 0;

		if (handled >= weight) /* Should never be greater */
			break;
	}

	FUNC3(bgmac, ring);

	return handled;
}