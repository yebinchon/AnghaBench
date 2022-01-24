#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct bmac_init_block {TYPE_3__* be_txd; TYPE_2__* be_rxd; } ;
struct bigmac {TYPE_1__* bigmac_op; struct sk_buff** rx_skbs; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; struct bmac_init_block* bmac_block; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_6__ {scalar_t__ tx_addr; scalar_t__ tx_flags; } ;
struct TYPE_5__ {int rx_flags; int /*<<< orphan*/  rx_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RXD_LENGTH ; 
 int RXD_OWN ; 
 int RX_BUF_ALLOC_SIZE ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bigmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(struct bigmac *bp, int from_irq)
{
	struct bmac_init_block *bb = bp->bmac_block;
	int i;
	gfp_t gfp_flags = GFP_KERNEL;

	if (from_irq || FUNC3())
		gfp_flags = GFP_ATOMIC;

	bp->rx_new = bp->rx_old = bp->tx_new = bp->tx_old = 0;

	/* Free any skippy bufs left around in the rings. */
	FUNC1(bp);

	/* Now get new skbufs for the receive ring. */
	for (i = 0; i < RX_RING_SIZE; i++) {
		struct sk_buff *skb;

		skb = FUNC0(RX_BUF_ALLOC_SIZE, gfp_flags);
		if (!skb)
			continue;

		bp->rx_skbs[i] = skb;

		/* Because we reserve afterwards. */
		FUNC4(skb, ETH_FRAME_LEN);
		FUNC5(skb, 34);

		bb->be_rxd[i].rx_addr =
			FUNC2(&bp->bigmac_op->dev,
				       skb->data,
				       RX_BUF_ALLOC_SIZE - 34,
				       DMA_FROM_DEVICE);
		bb->be_rxd[i].rx_flags =
			(RXD_OWN | ((RX_BUF_ALLOC_SIZE - 34) & RXD_LENGTH));
	}

	for (i = 0; i < TX_RING_SIZE; i++)
		bb->be_txd[i].tx_flags = bb->be_txd[i].tx_addr = 0;
}