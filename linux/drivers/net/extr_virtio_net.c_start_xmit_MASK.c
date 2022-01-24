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
struct virtnet_info {struct send_queue* sq; } ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  syncp; int /*<<< orphan*/  kicks; } ;
struct TYPE_8__ {int weight; } ;
struct send_queue {TYPE_3__ stats; TYPE_4__* vq; TYPE_1__ napi; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_11__ {scalar_t__ num_free; } ;

/* Variables and functions */
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct send_queue*,int) ; 
 scalar_t__ FUNC3 () ; 
 struct netdev_queue* FUNC4 (struct net_device*,int) ; 
 struct virtnet_info* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 scalar_t__ FUNC9 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 scalar_t__ FUNC19 (TYPE_4__*) ; 
 scalar_t__ FUNC20 (TYPE_4__*) ; 
 int FUNC21 (struct send_queue*,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC22(struct sk_buff *skb, struct net_device *dev)
{
	struct virtnet_info *vi = FUNC5(dev);
	int qnum = FUNC11(skb);
	struct send_queue *sq = &vi->sq[qnum];
	int err;
	struct netdev_queue *txq = FUNC4(dev, qnum);
	bool kick = !FUNC6();
	bool use_napi = sq->napi.weight;

	/* Free up any pending old buffers before queueing new ones. */
	FUNC2(sq, false);

	if (use_napi && kick)
		FUNC18(sq->vq);

	/* timestamp packet in software */
	FUNC13(skb);

	/* Try to transmit */
	err = FUNC21(sq, skb);

	/* This should not happen! */
	if (FUNC16(err)) {
		dev->stats.tx_fifo_errors++;
		if (FUNC3())
			FUNC1(&dev->dev,
				 "Unexpected TXQ (%d) queue failure: %d\n",
				 qnum, err);
		dev->stats.tx_dropped++;
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	/* Don't wait up for transmitted skbs to be freed. */
	if (!use_napi) {
		FUNC12(skb);
		FUNC10(skb);
	}

	/* If running out of space, stop queue to avoid getting packets that we
	 * are then unable to transmit.
	 * An alternative would be to force queuing layer to requeue the skb by
	 * returning NETDEV_TX_BUSY. However, NETDEV_TX_BUSY should not be
	 * returned in a normal path of operation: it means that driver is not
	 * maintaining the TX queue stop/start state properly, and causes
	 * the stack to do a non-trivial amount of useless work.
	 * Since most packets only take 1 or 2 ring slots, stopping the queue
	 * early means 16 slots are typically wasted.
	 */
	if (sq->vq->num_free < 2+MAX_SKB_FRAGS) {
		FUNC8(dev, qnum);
		if (!use_napi &&
		    FUNC16(!FUNC18(sq->vq))) {
			/* More just got used, free them then recheck. */
			FUNC2(sq, false);
			if (sq->vq->num_free >= 2+MAX_SKB_FRAGS) {
				FUNC7(dev, qnum);
				FUNC17(sq->vq);
			}
		}
	}

	if (kick || FUNC9(txq)) {
		if (FUNC19(sq->vq) && FUNC20(sq->vq)) {
			FUNC14(&sq->stats.syncp);
			sq->stats.kicks++;
			FUNC15(&sq->stats.syncp);
		}
	}

	return NETDEV_TX_OK;
}