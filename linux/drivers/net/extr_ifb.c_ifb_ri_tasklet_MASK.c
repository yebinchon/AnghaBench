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
struct sk_buff {int tc_skip_classify; int /*<<< orphan*/  mac_len; int /*<<< orphan*/  tc_from_ingress; int /*<<< orphan*/  skb_iif; int /*<<< orphan*/  dev; scalar_t__ len; scalar_t__ tc_redirected; } ;
struct netdev_queue {int dummy; } ;
struct ifb_q_private {int tasklet_pending; int /*<<< orphan*/  ifb_tasklet; int /*<<< orphan*/  rq; TYPE_2__* dev; int /*<<< orphan*/  tq; int /*<<< orphan*/  tsync; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  txqnum; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct netdev_queue* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(unsigned long _txp)
{
	struct ifb_q_private *txp = (struct ifb_q_private *)_txp;
	struct netdev_queue *txq;
	struct sk_buff *skb;

	txq = FUNC7(txp->dev, txp->txqnum);
	skb = FUNC13(&txp->tq);
	if (!skb) {
		if (!FUNC0(txq))
			goto resched;
		FUNC16(&txp->rq, &txp->tq);
		FUNC1(txq);
	}

	while ((skb = FUNC2(&txp->tq)) != NULL) {
		skb->tc_redirected = 0;
		skb->tc_skip_classify = 1;

		FUNC18(&txp->tsync);
		txp->tx_packets++;
		txp->tx_bytes += skb->len;
		FUNC19(&txp->tsync);

		FUNC11();
		skb->dev = FUNC3(FUNC5(txp->dev), skb->skb_iif);
		if (!skb->dev) {
			FUNC12();
			FUNC4(skb);
			txp->dev->stats.tx_dropped++;
			if (FUNC15(&txp->tq) != 0)
				goto resched;
			break;
		}
		FUNC12();
		skb->skb_iif = txp->dev->ifindex;

		if (!skb->tc_from_ingress) {
			FUNC6(skb);
		} else {
			FUNC14(skb, skb->mac_len);
			FUNC8(skb);
		}
	}

	if (FUNC0(txq)) {
		skb = FUNC13(&txp->rq);
		if (!skb) {
			txp->tasklet_pending = 0;
			if (FUNC9(txq))
				FUNC10(txq);
		} else {
			FUNC1(txq);
			goto resched;
		}
		FUNC1(txq);
	} else {
resched:
		txp->tasklet_pending = 1;
		FUNC17(&txp->ifb_tasklet);
	}

}