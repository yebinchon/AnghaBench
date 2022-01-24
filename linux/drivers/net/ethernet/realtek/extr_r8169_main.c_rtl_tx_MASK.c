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
typedef  int u32 ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; int /*<<< orphan*/  syncp; } ;
struct rtl8169_private {unsigned int dirty_tx; unsigned int cur_tx; TYPE_1__ tx_stats; TYPE_2__* TxDescArray; struct ring_info* tx_skb; } ;
struct ring_info {TYPE_3__* skb; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {int /*<<< orphan*/  opts1; } ;

/* Variables and functions */
 int DescOwn ; 
 int /*<<< orphan*/  MAX_SKB_FRAGS ; 
 unsigned int NUM_TX_DESC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ring_info*,TYPE_2__*) ; 
 scalar_t__ FUNC8 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct net_device *dev, struct rtl8169_private *tp,
		   int budget)
{
	unsigned int dirty_tx, tx_left, bytes_compl = 0, pkts_compl = 0;

	dirty_tx = tp->dirty_tx;
	FUNC10();
	tx_left = tp->cur_tx - dirty_tx;

	while (tx_left > 0) {
		unsigned int entry = dirty_tx % NUM_TX_DESC;
		struct ring_info *tx_skb = tp->tx_skb + entry;
		u32 status;

		status = FUNC1(tp->TxDescArray[entry].opts1);
		if (status & DescOwn)
			break;

		/* This barrier is needed to keep us from reading
		 * any other fields out of the Tx descriptor until
		 * we know the status of DescOwn
		 */
		FUNC0();

		FUNC7(FUNC11(tp), tx_skb,
				     tp->TxDescArray + entry);
		if (tx_skb->skb) {
			pkts_compl++;
			bytes_compl += tx_skb->skb->len;
			FUNC2(tx_skb->skb, budget);
			tx_skb->skb = NULL;
		}
		dirty_tx++;
		tx_left--;
	}

	if (tp->dirty_tx != dirty_tx) {
		FUNC3(dev, pkts_compl, bytes_compl);

		FUNC12(&tp->tx_stats.syncp);
		tp->tx_stats.packets += pkts_compl;
		tp->tx_stats.bytes += bytes_compl;
		FUNC13(&tp->tx_stats.syncp);

		tp->dirty_tx = dirty_tx;
		/* Sync with rtl8169_start_xmit:
		 * - publish dirty_tx ring index (write barrier)
		 * - refresh cur_tx ring index and queue status (read barrier)
		 * May the current thread miss the stopped queue condition,
		 * a racing xmit thread can only have a right view of the
		 * ring status.
		 */
		FUNC9();
		if (FUNC4(dev) &&
		    FUNC8(tp, MAX_SKB_FRAGS)) {
			FUNC5(dev);
		}
		/*
		 * 8168 hack: TxPoll requests are lost when the Tx packets are
		 * too close. Let's kick an extra TxPoll request when a burst
		 * of start_xmit activity is detected (if it is not detected,
		 * it is slow enough). -- FR
		 */
		if (tp->cur_tx != dirty_tx)
			FUNC6(tp);
	}
}