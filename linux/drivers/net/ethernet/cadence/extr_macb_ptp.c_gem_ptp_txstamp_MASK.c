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
struct sk_buff {int dummy; } ;
struct macb_queue {unsigned long tx_ts_head; int /*<<< orphan*/  tx_ts_task; struct gem_tx_ts* tx_timestamps; int /*<<< orphan*/  bp; int /*<<< orphan*/  tx_ts_tail; } ;
struct macb_dma_desc_ptp {int /*<<< orphan*/  ts_2; int /*<<< orphan*/  ts_1; } ;
struct macb_dma_desc {int /*<<< orphan*/  ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  ts_2; int /*<<< orphan*/  ts_1; } ;
struct gem_tx_ts {TYPE_1__ desc_ptp; struct sk_buff* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  DMA_TXVALID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PTP_TS_BUFFER_SIZE ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct macb_dma_desc_ptp* FUNC4 (int /*<<< orphan*/ ,struct macb_dma_desc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,unsigned long) ; 

int FUNC8(struct macb_queue *queue, struct sk_buff *skb,
		    struct macb_dma_desc *desc)
{
	unsigned long tail = FUNC2(queue->tx_ts_tail);
	unsigned long head = queue->tx_ts_head;
	struct macb_dma_desc_ptp *desc_ptp;
	struct gem_tx_ts *tx_timestamp;

	if (!FUNC1(DMA_TXVALID, desc->ctrl))
		return -EINVAL;

	if (FUNC0(head, tail, PTP_TS_BUFFER_SIZE) == 0)
		return -ENOMEM;

	FUNC6(skb)->tx_flags |= SKBTX_IN_PROGRESS;
	desc_ptp = FUNC4(queue->bp, desc);
	tx_timestamp = &queue->tx_timestamps[head];
	tx_timestamp->skb = skb;
	/* ensure ts_1/ts_2 is loaded after ctrl (TX_USED check) */
	FUNC3();
	tx_timestamp->desc_ptp.ts_1 = desc_ptp->ts_1;
	tx_timestamp->desc_ptp.ts_2 = desc_ptp->ts_2;
	/* move head */
	FUNC7(&queue->tx_ts_head,
			  (head + 1) & (PTP_TS_BUFFER_SIZE - 1));

	FUNC5(&queue->tx_ts_task);
	return 0;
}