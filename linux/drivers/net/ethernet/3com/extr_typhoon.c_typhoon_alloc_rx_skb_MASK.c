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
typedef  size_t u32 ;
struct typhoon_indexes {void* rxBuffReady; int /*<<< orphan*/  rxBuffCleared; } ;
struct basic_ring {int lastWrite; scalar_t__ ringBase; } ;
struct typhoon {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; struct basic_ring rxBuffRing; struct rxbuff_ent* rxbuffers; struct typhoon_indexes* indexes; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rxbuff_ent {int dma_addr; struct sk_buff* skb; } ;
struct rx_free {size_t virtAddr; void* physAddr; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_BUF_SZ ; 
 int RXFREE_ENTRIES ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(struct typhoon *tp, u32 idx)
{
	struct typhoon_indexes *indexes = tp->indexes;
	struct rxbuff_ent *rxb = &tp->rxbuffers[idx];
	struct basic_ring *ring = &tp->rxBuffRing;
	struct rx_free *r;
	struct sk_buff *skb;
	dma_addr_t dma_addr;

	rxb->skb = NULL;

	if((ring->lastWrite + sizeof(*r)) % (RXFREE_ENTRIES * sizeof(*r)) ==
				FUNC1(indexes->rxBuffCleared))
		return -ENOMEM;

	skb = FUNC2(tp->dev, PKT_BUF_SZ);
	if(!skb)
		return -ENOMEM;

#if 0
	/* Please, 3com, fix the firmware to allow DMA to a unaligned
	 * address! Pretty please?
	 */
	skb_reserve(skb, 2);
#endif

	dma_addr = FUNC3(tp->pdev, skb->data,
				  PKT_BUF_SZ, PCI_DMA_FROMDEVICE);

	/* Since no card does 64 bit DAC, the high bits will never
	 * change from zero.
	 */
	r = (struct rx_free *) (ring->ringBase + ring->lastWrite);
	FUNC5(&ring->lastWrite, 1);
	r->virtAddr = idx;
	r->physAddr = FUNC0(dma_addr);
	rxb->skb = skb;
	rxb->dma_addr = dma_addr;

	/* Tell the card about it */
	FUNC6();
	indexes->rxBuffReady = FUNC0(ring->lastWrite);
	return 0;
}