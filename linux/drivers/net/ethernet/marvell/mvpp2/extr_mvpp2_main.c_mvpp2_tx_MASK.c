#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct mvpp2_txq_pcpu {int reserved_num; int count; int stop_threshold; } ;
struct mvpp2_tx_queue {int count; int done_pkts_coal; int /*<<< orphan*/  id; int /*<<< orphan*/  pcpu; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port_pcpu {int timer_scheduled; int /*<<< orphan*/  tx_done_timer; } ;
struct mvpp2_port {int /*<<< orphan*/ * tx_lock; TYPE_4__* priv; int /*<<< orphan*/  pcpu; int /*<<< orphan*/  has_tx_irqs; int /*<<< orphan*/  stats; struct mvpp2_tx_queue** txqs; } ;
struct mvpp2_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock_map; struct mvpp2_tx_queue* aggr_txqs; } ;
struct TYPE_7__ {int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED_SOFT ; 
 int /*<<< orphan*/  MVPP2_TXDONE_HRTIMER_PERIOD_NS ; 
 int MVPP2_TXD_F_DESC ; 
 int MVPP2_TXD_L_DESC ; 
 int MVPP2_TXD_PADDING_DISABLE ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mvpp2_port*,struct mvpp2_tx_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*,int) ; 
 unsigned int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mvpp2_port*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct mvpp2_port*,struct sk_buff*,struct mvpp2_tx_queue*,struct mvpp2_tx_queue*) ; 
 int FUNC9 (struct sk_buff*,struct net_device*,struct mvpp2_tx_queue*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct mvpp2_port*,struct mvpp2_tx_desc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  FUNC15 (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct mvpp2_port*,struct mvpp2_txq_pcpu*,struct sk_buff*,struct mvpp2_tx_desc*) ; 
 struct mvpp2_tx_desc* FUNC17 (struct mvpp2_tx_queue*) ; 
 scalar_t__ FUNC18 (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*,int) ; 
 struct netdev_queue* FUNC19 (struct net_device*,size_t) ; 
 struct mvpp2_port* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct netdev_queue*) ; 
 void* FUNC22 (int /*<<< orphan*/ ,unsigned int) ; 
 size_t FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 TYPE_3__* FUNC26 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC30 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_tx_desc*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 

__attribute__((used)) static netdev_tx_t FUNC36(struct sk_buff *skb, struct net_device *dev)
{
	struct mvpp2_port *port = FUNC20(dev);
	struct mvpp2_tx_queue *txq, *aggr_txq;
	struct mvpp2_txq_pcpu *txq_pcpu;
	struct mvpp2_tx_desc *tx_desc;
	dma_addr_t buf_dma_addr;
	unsigned long flags = 0;
	unsigned int thread;
	int frags = 0;
	u16 txq_id;
	u32 tx_cmd;

	thread = FUNC6(port->priv, FUNC27());

	txq_id = FUNC23(skb);
	txq = port->txqs[txq_id];
	txq_pcpu = FUNC22(txq->pcpu, thread);
	aggr_txq = &port->priv->aggr_txqs[thread];

	if (FUNC30(thread, &port->priv->lock_map))
		FUNC28(&port->tx_lock[thread], flags);

	if (FUNC25(skb)) {
		frags = FUNC9(skb, dev, txq, aggr_txq, txq_pcpu);
		goto out;
	}
	frags = FUNC26(skb)->nr_frags + 1;

	/* Check number of available descriptors */
	if (FUNC4(port, aggr_txq, frags) ||
	    FUNC18(port, txq, txq_pcpu, frags)) {
		frags = 0;
		goto out;
	}

	/* Get a descriptor for the first part of the packet */
	tx_desc = FUNC17(aggr_txq);
	FUNC13(port, tx_desc, txq->id);
	FUNC12(port, tx_desc, FUNC24(skb));

	buf_dma_addr = FUNC1(dev->dev.parent, skb->data,
				      FUNC24(skb), DMA_TO_DEVICE);
	if (FUNC34(FUNC2(dev->dev.parent, buf_dma_addr))) {
		FUNC14(txq);
		frags = 0;
		goto out;
	}

	FUNC11(port, tx_desc, buf_dma_addr);

	tx_cmd = FUNC7(port, skb);

	if (frags == 1) {
		/* First and Last descriptor */
		tx_cmd |= MVPP2_TXD_F_DESC | MVPP2_TXD_L_DESC;
		FUNC10(port, tx_desc, tx_cmd);
		FUNC16(port, txq_pcpu, skb, tx_desc);
	} else {
		/* First but not Last */
		tx_cmd |= MVPP2_TXD_F_DESC | MVPP2_TXD_PADDING_DISABLE;
		FUNC10(port, tx_desc, tx_cmd);
		FUNC16(port, txq_pcpu, NULL, tx_desc);

		/* Continue with other skb fragments */
		if (FUNC8(port, skb, aggr_txq, txq)) {
			FUNC31(port, txq, tx_desc);
			frags = 0;
		}
	}

out:
	if (frags > 0) {
		struct mvpp2_pcpu_stats *stats = FUNC22(port->stats, thread);
		struct netdev_queue *nq = FUNC19(dev, txq_id);

		txq_pcpu->reserved_num -= frags;
		txq_pcpu->count += frags;
		aggr_txq->count += frags;

		/* Enable transmit */
		FUNC35();
		FUNC5(port, frags);

		if (txq_pcpu->count >= txq_pcpu->stop_threshold)
			FUNC21(nq);

		FUNC32(&stats->syncp);
		stats->tx_packets++;
		stats->tx_bytes += skb->len;
		FUNC33(&stats->syncp);
	} else {
		dev->stats.tx_dropped++;
		FUNC0(skb);
	}

	/* Finalize TX processing */
	if (!port->has_tx_irqs && txq_pcpu->count >= txq->done_pkts_coal)
		FUNC15(port, txq, txq_pcpu);

	/* Set the timer in case not all frags were processed */
	if (!port->has_tx_irqs && txq_pcpu->count <= frags &&
	    txq_pcpu->count > 0) {
		struct mvpp2_port_pcpu *port_pcpu = FUNC22(port->pcpu, thread);

		if (!port_pcpu->timer_scheduled) {
			port_pcpu->timer_scheduled = true;
			FUNC3(&port_pcpu->tx_done_timer,
				      MVPP2_TXDONE_HRTIMER_PERIOD_NS,
				      HRTIMER_MODE_REL_PINNED_SOFT);
		}
	}

	if (FUNC30(thread, &port->priv->lock_map))
		FUNC29(&port->tx_lock[thread], flags);

	return NETDEV_TX_OK;
}