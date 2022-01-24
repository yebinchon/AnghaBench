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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct fst_port_info {size_t txpos; int txqe; size_t txqs; scalar_t__ start; struct sk_buff** txq; int /*<<< orphan*/  run; } ;
struct fst_card_info {int nports; scalar_t__ family; scalar_t__ dma_len_tx; size_t dma_txpos; int /*<<< orphan*/  tx_dma_handle_card; struct fst_port_info* dma_port_tx; int /*<<< orphan*/  tx_dma_handle_host; scalar_t__ mem; int /*<<< orphan*/  card_lock; int /*<<< orphan*/  dmatx_in_progress; struct fst_port_info* ports; } ;
struct TYPE_4__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  bcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_TX ; 
 int DMA_OWN ; 
 scalar_t__ FST_FAMILY_TXP ; 
 scalar_t__ FST_MIN_DMA_LEN ; 
 int FUNC1 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 int FST_TXQ_DEPTH ; 
 int /*<<< orphan*/  FUNC2 (struct fst_card_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_card_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t NUM_TX_BUFFER ; 
 int TX_ENP ; 
 int TX_STP ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct fst_card_info*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int fst_txq_low ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 struct net_device* FUNC12 (struct fst_port_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ *** txBuffer ; 
 TYPE_2__** txDescrRing ; 

__attribute__((used)) static void
FUNC15(struct fst_card_info *card)
{
	struct fst_port_info *port;
	int pi;
	int txq_length;
	struct sk_buff *skb;
	unsigned long flags;
	struct net_device *dev;

	/*
	 *  Find a free buffer for the transmit
	 *  Step through each port on this card
	 */

	FUNC5(DBG_TX, "do_bottom_half_tx\n");
	for (pi = 0, port = card->ports; pi < card->nports; pi++, port++) {
		if (!port->run)
			continue;

		dev = FUNC12(port);
		while (!(FUNC1(card, txDescrRing[pi][port->txpos].bits) &
			 DMA_OWN) &&
		       !(card->dmatx_in_progress)) {
			/*
			 * There doesn't seem to be a txdone event per-se
			 * We seem to have to deduce it, by checking the DMA_OWN
			 * bit on the next buffer we think we can use
			 */
			FUNC13(&card->card_lock, flags);
			if ((txq_length = port->txqe - port->txqs) < 0) {
				/*
				 * This is the case where one has wrapped and the
				 * maths gives us a negative number
				 */
				txq_length = txq_length + FST_TXQ_DEPTH;
			}
			FUNC14(&card->card_lock, flags);
			if (txq_length > 0) {
				/*
				 * There is something to send
				 */
				FUNC13(&card->card_lock, flags);
				skb = port->txq[port->txqs];
				port->txqs++;
				if (port->txqs == FST_TXQ_DEPTH) {
					port->txqs = 0;
				}
				FUNC14(&card->card_lock, flags);
				/*
				 * copy the data and set the required indicators on the
				 * card.
				 */
				FUNC3(card, txDescrRing[pi][port->txpos].bcnt,
					FUNC4(skb->len));
				if ((skb->len < FST_MIN_DMA_LEN) ||
				    (card->family == FST_FAMILY_TXP)) {
					/* Enqueue the packet with normal io */
					FUNC9(card->mem +
						    FUNC0(txBuffer[pi]
							       [port->
								txpos][0]),
						    skb->data, skb->len);
					FUNC2(card,
						txDescrRing[pi][port->txpos].
						bits,
						DMA_OWN | TX_STP | TX_ENP);
					dev->stats.tx_packets++;
					dev->stats.tx_bytes += skb->len;
					FUNC10(dev);
				} else {
					/* Or do it through dma */
					FUNC8(card->tx_dma_handle_host,
					       skb->data, skb->len);
					card->dma_port_tx = port;
					card->dma_len_tx = skb->len;
					card->dma_txpos = port->txpos;
					FUNC7(card,
						   card->tx_dma_handle_card,
						   FUNC0(txBuffer[pi]
							      [port->txpos][0]),
						   skb->len);
				}
				if (++port->txpos >= NUM_TX_BUFFER)
					port->txpos = 0;
				/*
				 * If we have flow control on, can we now release it?
				 */
				if (port->start) {
					if (txq_length < fst_txq_low) {
						FUNC11(FUNC12
								 (port));
						port->start = 0;
					}
				}
				FUNC6(skb);
			} else {
				/*
				 * Nothing to send so break out of the while loop
				 */
				break;
			}
		}
	}
}