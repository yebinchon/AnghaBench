#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; } ;
struct de_private {unsigned int rx_tail; int rx_buf_sz; TYPE_4__* dev; TYPE_3__* rx_ring; int /*<<< orphan*/  pdev; TYPE_1__* rx_skb; } ;
typedef  int dma_addr_t ;
struct TYPE_9__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_11__ {TYPE_2__ stats; } ;
struct TYPE_10__ {void* opts1; void* addr1; void* opts2; } ;
struct TYPE_8__ {int mapping; struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DE_RX_RING_SIZE ; 
 int DescOwn ; 
 int NET_RX_DROP ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RX_OFFSET ; 
 int RingEnd ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct de_private*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_4__*) ; 
 int FUNC5 (void*) ; 
 struct sk_buff* FUNC6 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct de_private*,int /*<<< orphan*/ ,TYPE_4__*,char*,unsigned int,int,int,unsigned int) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int rx_copybreak ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void FUNC20 (struct de_private *de)
{
	unsigned rx_tail = de->rx_tail;
	unsigned rx_work = DE_RX_RING_SIZE;
	unsigned drop = 0;
	int rc;

	while (--rx_work) {
		u32 status, len;
		dma_addr_t mapping;
		struct sk_buff *skb, *copy_skb;
		unsigned copying_skb, buflen;

		skb = de->rx_skb[rx_tail].skb;
		FUNC0(!skb);
		FUNC14();
		status = FUNC5(de->rx_ring[rx_tail].opts1);
		if (status & DescOwn)
			break;

		len = ((status >> 16) & 0x7ff) - 4;
		mapping = de->rx_skb[rx_tail].mapping;

		if (FUNC18(drop)) {
			de->dev->stats.rx_dropped++;
			goto rx_next;
		}

		if (FUNC18((status & 0x38008300) != 0x0300)) {
			FUNC3(de, rx_tail, status, len);
			goto rx_next;
		}

		copying_skb = (len <= rx_copybreak);

		FUNC8(de, rx_status, de->dev,
			  "rx slot %d status 0x%x len %d copying? %d\n",
			  rx_tail, status, len, copying_skb);

		buflen = copying_skb ? (len + RX_OFFSET) : de->rx_buf_sz;
		copy_skb = FUNC6(de->dev, buflen);
		if (FUNC18(!copy_skb)) {
			de->dev->stats.rx_dropped++;
			drop = 1;
			rx_work = 100;
			goto rx_next;
		}

		if (!copying_skb) {
			FUNC13(de->pdev, mapping,
					 buflen, PCI_DMA_FROMDEVICE);
			FUNC16(skb, len);

			mapping =
			de->rx_skb[rx_tail].mapping =
				FUNC12(de->pdev, copy_skb->data,
					       buflen, PCI_DMA_FROMDEVICE);
			de->rx_skb[rx_tail].skb = copy_skb;
		} else {
			FUNC10(de->pdev, mapping, len, PCI_DMA_FROMDEVICE);
			FUNC17(copy_skb, RX_OFFSET);
			FUNC15(skb, FUNC16(copy_skb, len),
						  len);
			FUNC11(de->pdev, mapping, len, PCI_DMA_FROMDEVICE);

			/* We'll reuse the original ring buffer. */
			skb = copy_skb;
		}

		skb->protocol = FUNC4 (skb, de->dev);

		de->dev->stats.rx_packets++;
		de->dev->stats.rx_bytes += skb->len;
		rc = FUNC9 (skb);
		if (rc == NET_RX_DROP)
			drop = 1;

rx_next:
		if (rx_tail == (DE_RX_RING_SIZE - 1))
			de->rx_ring[rx_tail].opts2 =
				FUNC2(RingEnd | de->rx_buf_sz);
		else
			de->rx_ring[rx_tail].opts2 = FUNC2(de->rx_buf_sz);
		de->rx_ring[rx_tail].addr1 = FUNC2(mapping);
		FUNC19();
		de->rx_ring[rx_tail].opts1 = FUNC2(DescOwn);
		rx_tail = FUNC1(rx_tail);
	}

	if (!rx_work)
		FUNC7(de->dev, "rx work limit reached\n");

	de->rx_tail = rx_tail;
}