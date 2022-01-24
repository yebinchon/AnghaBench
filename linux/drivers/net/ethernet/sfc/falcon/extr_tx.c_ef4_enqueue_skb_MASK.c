#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct ef4_tx_queue {unsigned int tx_min_size; int /*<<< orphan*/  tx_packets; scalar_t__ xmit_more_available; int /*<<< orphan*/  core_txq; int /*<<< orphan*/  cb_packets; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 unsigned int EF4_TX_CB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct ef4_tx_queue*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_tx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct ef4_tx_queue*) ; 
 scalar_t__ FUNC5 (struct ef4_tx_queue*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ef4_tx_queue*) ; 
 struct ef4_tx_queue* FUNC7 (struct ef4_tx_queue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

netdev_tx_t FUNC12(struct ef4_tx_queue *tx_queue, struct sk_buff *skb)
{
	bool data_mapped = false;
	unsigned int skb_len;

	skb_len = skb->len;
	FUNC0(FUNC11(skb));

	if (skb_len < tx_queue->tx_min_size ||
			(skb->data_len && skb_len <= EF4_TX_CB_SIZE)) {
		/* Pad short packets or coalesce short fragmented packets. */
		if (FUNC2(tx_queue, skb))
			goto err;
		tx_queue->cb_packets++;
		data_mapped = true;
	}

	/* Map for DMA and create descriptors if we haven't done so already. */
	if (!data_mapped && (FUNC5(tx_queue, skb)))
		goto err;

	/* Update BQL */
	FUNC8(tx_queue->core_txq, skb_len);

	/* Pass off to hardware */
	if (!FUNC9() || FUNC10(tx_queue->core_txq)) {
		struct ef4_tx_queue *txq2 = FUNC7(tx_queue);

		/* There could be packets left on the partner queue if those
		 * SKBs had skb->xmit_more set. If we do not push those they
		 * could be left for a long time and cause a netdev watchdog.
		 */
		if (txq2->xmit_more_available)
			FUNC4(txq2);

		FUNC4(tx_queue);
	} else {
		tx_queue->xmit_more_available = FUNC9();
	}

	tx_queue->tx_packets++;

	FUNC6(tx_queue);

	return NETDEV_TX_OK;


err:
	FUNC3(tx_queue);
	FUNC1(skb);
	return NETDEV_TX_OK;
}