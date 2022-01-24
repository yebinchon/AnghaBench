#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  struct macb_queue* u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct macb_tx_skb {struct sk_buff* skb; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct macb_queue {unsigned int tx_head; unsigned int tx_tail; TYPE_2__ stats; struct macb* bp; } ;
struct macb_dma_desc {int ctrl; } ;
struct macb {int queues; int caps; TYPE_4__* dev; int /*<<< orphan*/  tx_ring_size; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_9__ {int tx_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int MACB_CAPS_ISR_CLEAR_ON_WRITE ; 
 scalar_t__ FUNC2 (struct macb*) ; 
 int SKBTX_HW_TSTAMP ; 
 int /*<<< orphan*/  TCOMP ; 
 int /*<<< orphan*/  TSR ; 
 int /*<<< orphan*/  TX_USED ; 
 scalar_t__ FUNC3 (TYPE_4__*,struct macb_queue*) ; 
 scalar_t__ FUNC4 (struct macb_queue*,struct sk_buff*,struct macb_dma_desc*) ; 
 int FUNC5 (struct macb*,int /*<<< orphan*/ ) ; 
 struct macb_dma_desc* FUNC6 (struct macb_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct macb*,unsigned int) ; 
 struct macb_tx_skb* FUNC8 (struct macb_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct macb*,struct macb_tx_skb*) ; 
 int /*<<< orphan*/  FUNC10 (struct macb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,struct macb_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct macb_queue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 TYPE_3__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct macb_queue *queue)
{
	unsigned int tail;
	unsigned int head;
	u32 status;
	struct macb *bp = queue->bp;
	u16 queue_index = queue - bp->queues;

	status = FUNC5(bp, TSR);
	FUNC10(bp, TSR, status);

	if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
		FUNC13(queue, ISR, FUNC1(TCOMP));

	FUNC11(bp->dev, "macb_tx_interrupt status = 0x%03lx\n",
		    (unsigned long)status);

	head = queue->tx_head;
	for (tail = queue->tx_tail; tail != head; tail++) {
		struct macb_tx_skb	*tx_skb;
		struct sk_buff		*skb;
		struct macb_dma_desc	*desc;
		u32			ctrl;

		desc = FUNC6(queue, tail);

		/* Make hw descriptor updates visible to CPU */
		FUNC14();

		ctrl = desc->ctrl;

		/* TX_USED bit is only set by hardware on the very first buffer
		 * descriptor of the transmitted frame.
		 */
		if (!(ctrl & FUNC1(TX_USED)))
			break;

		/* Process all buffers of the current transmitted frame */
		for (;; tail++) {
			tx_skb = FUNC8(queue, tail);
			skb = tx_skb->skb;

			/* First, update TX stats if needed */
			if (skb) {
				if (FUNC16(FUNC15(skb)->tx_flags &
					     SKBTX_HW_TSTAMP) &&
				    FUNC4(queue, skb, desc) == 0) {
					/* skb now belongs to timestamp buffer
					 * and will be removed later
					 */
					tx_skb->skb = NULL;
				}
				FUNC11(bp->dev, "skb %u (data %p) TX complete\n",
					    FUNC7(bp, tail),
					    skb->data);
				bp->dev->stats.tx_packets++;
				queue->stats.tx_packets++;
				bp->dev->stats.tx_bytes += skb->len;
				queue->stats.tx_bytes += skb->len;
			}

			/* Now we can safely release resources */
			FUNC9(bp, tx_skb);

			/* skb is set only for the last buffer of the frame.
			 * WARNING: at this point skb has been freed by
			 * macb_tx_unmap().
			 */
			if (skb)
				break;
		}
	}

	queue->tx_tail = tail;
	if (FUNC3(bp->dev, queue_index) &&
	    FUNC0(queue->tx_head, queue->tx_tail,
		     bp->tx_ring_size) <= FUNC2(bp))
		FUNC12(bp->dev, queue_index);
}