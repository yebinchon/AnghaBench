#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct fst_port_info {scalar_t__ index; size_t txqe; int txqs; int start; struct sk_buff** txq; struct fst_card_info* card; } ;
struct fst_card_info {scalar_t__ card_no; int /*<<< orphan*/  card_lock; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_ASS ; 
 int /*<<< orphan*/  DBG_TX ; 
 int FST_TXQ_DEPTH ; 
 scalar_t__ LEN_TX_BUFFER ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct fst_port_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  fst_tx_task ; 
 int fst_txq_high ; 
 int /*<<< orphan*/  fst_work_txq ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t
FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct fst_card_info *card;
	struct fst_port_info *port;
	unsigned long flags;
	int txq_length;

	port = FUNC2(dev);
	card = port->card;
	FUNC0(DBG_TX, "fst_start_xmit: length = %d\n", skb->len);

	/* Drop packet with error if we don't have carrier */
	if (!FUNC4(dev)) {
		FUNC1(skb);
		dev->stats.tx_errors++;
		dev->stats.tx_carrier_errors++;
		FUNC0(DBG_ASS,
		    "Tried to transmit but no carrier on card %d port %d\n",
		    card->card_no, port->index);
		return NETDEV_TX_OK;
	}

	/* Drop it if it's too big! MTU failure ? */
	if (skb->len > LEN_TX_BUFFER) {
		FUNC0(DBG_ASS, "Packet too large %d vs %d\n", skb->len,
		    LEN_TX_BUFFER);
		FUNC1(skb);
		dev->stats.tx_errors++;
		return NETDEV_TX_OK;
	}

	/*
	 * We are always going to queue the packet
	 * so that the bottom half is the only place we tx from
	 * Check there is room in the port txq
	 */
	FUNC6(&card->card_lock, flags);
	if ((txq_length = port->txqe - port->txqs) < 0) {
		/*
		 * This is the case where the next free has wrapped but the
		 * last used hasn't
		 */
		txq_length = txq_length + FST_TXQ_DEPTH;
	}
	FUNC7(&card->card_lock, flags);
	if (txq_length > fst_txq_high) {
		/*
		 * We have got enough buffers in the pipeline.  Ask the network
		 * layer to stop sending frames down
		 */
		FUNC5(dev);
		port->start = 1;	/* I'm using this to signal stop sent up */
	}

	if (txq_length == FST_TXQ_DEPTH - 1) {
		/*
		 * This shouldn't have happened but such is life
		 */
		FUNC1(skb);
		dev->stats.tx_errors++;
		FUNC0(DBG_ASS, "Tx queue overflow card %d port %d\n",
		    card->card_no, port->index);
		return NETDEV_TX_OK;
	}

	/*
	 * queue the buffer
	 */
	FUNC6(&card->card_lock, flags);
	port->txq[port->txqe] = skb;
	port->txqe++;
	if (port->txqe == FST_TXQ_DEPTH)
		port->txqe = 0;
	FUNC7(&card->card_lock, flags);

	/* Scehdule the bottom half which now does transmit processing */
	FUNC3(&fst_work_txq, card->card_no);
	FUNC8(&fst_tx_task);

	return NETDEV_TX_OK;
}