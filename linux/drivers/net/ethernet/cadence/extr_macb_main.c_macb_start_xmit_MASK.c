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
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  head; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct macb_queue {int /*<<< orphan*/  tx_tail; int /*<<< orphan*/  tx_head; } ;
struct macb {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_ring_size; int /*<<< orphan*/  dev; int /*<<< orphan*/  max_tx_length; struct macb_queue* queues; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {scalar_t__ protocol; } ;
struct TYPE_3__ {scalar_t__ gso_size; unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  TSTART ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff**,struct net_device*) ; 
 int FUNC7 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct macb*,struct macb_queue*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct macb*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 struct macb* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ *) ; 
 size_t FUNC19 (struct sk_buff*) ; 
 unsigned int FUNC20 (struct sk_buff*) ; 
 TYPE_1__* FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 unsigned int FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 () ; 

__attribute__((used)) static netdev_tx_t FUNC29(struct sk_buff *skb, struct net_device *dev)
{
	u16 queue_index = FUNC19(skb);
	struct macb *bp = FUNC13(dev);
	struct macb_queue *queue = &bp->queues[queue_index];
	unsigned long flags;
	unsigned int desc_cnt, nr_frags, frag_size, f;
	unsigned int hdrlen;
	bool is_lso, is_udp = 0;
	netdev_tx_t ret = NETDEV_TX_OK;

	if (FUNC5(skb)) {
		FUNC3(skb);
		return ret;
	}

	if (FUNC6(&skb, dev)) {
		FUNC3(skb);
		return ret;
	}

	is_lso = (FUNC21(skb)->gso_size != 0);

	if (is_lso) {
		is_udp = !!(FUNC4(skb)->protocol == IPPROTO_UDP);

		/* length of headers */
		if (is_udp)
			/* only queue eth + ip headers separately for UDP */
			hdrlen = FUNC23(skb);
		else
			hdrlen = FUNC23(skb) + FUNC27(skb);
		if (FUNC20(skb) < hdrlen) {
			FUNC12(bp->dev, "Error - LSO headers fragmented!!!\n");
			/* if this is required, would need to copy to single buffer */
			return NETDEV_TX_BUSY;
		}
	} else
		hdrlen = FUNC10(FUNC20(skb), bp->max_tx_length);

#if defined(DEBUG) && defined(VERBOSE_DEBUG)
	netdev_vdbg(bp->dev,
		    "start_xmit: queue %hu len %u head %p data %p tail %p end %p\n",
		    queue_index, skb->len, skb->head, skb->data,
		    skb_tail_pointer(skb), skb_end_pointer(skb));
	print_hex_dump(KERN_DEBUG, "data: ", DUMP_PREFIX_OFFSET, 16, 1,
		       skb->data, 16, true);
#endif

	/* Count how many TX buffer descriptors are needed to send this
	 * socket buffer: skb fragments of jumbo frames may need to be
	 * split into many buffer descriptors.
	 */
	if (is_lso && (FUNC20(skb) > hdrlen))
		/* extra header descriptor if also payload in first buffer */
		desc_cnt = FUNC1((FUNC20(skb) - hdrlen), bp->max_tx_length) + 1;
	else
		desc_cnt = FUNC1(FUNC20(skb), bp->max_tx_length);
	nr_frags = FUNC21(skb)->nr_frags;
	for (f = 0; f < nr_frags; f++) {
		frag_size = FUNC18(&FUNC21(skb)->frags[f]);
		desc_cnt += FUNC1(frag_size, bp->max_tx_length);
	}

	FUNC25(&bp->lock, flags);

	/* This is a hard error, log it. */
	if (FUNC0(queue->tx_head, queue->tx_tail,
		       bp->tx_ring_size) < desc_cnt) {
		FUNC15(dev, queue_index);
		FUNC26(&bp->lock, flags);
		FUNC11(bp->dev, "tx_head = %u, tx_tail = %u\n",
			   queue->tx_head, queue->tx_tail);
		return NETDEV_TX_BUSY;
	}

	/* Map socket buffer for DMA transfer */
	if (!FUNC8(bp, queue, skb, hdrlen)) {
		FUNC3(skb);
		goto unlock;
	}

	/* Make newly initialized descriptor visible to hardware */
	FUNC28();
	FUNC24(skb);

	FUNC9(bp, NCR, FUNC7(bp, NCR) | FUNC2(TSTART));

	if (FUNC0(queue->tx_head, queue->tx_tail, bp->tx_ring_size) < 1)
		FUNC15(dev, queue_index);

unlock:
	FUNC26(&bp->lock, flags);

	return ret;
}