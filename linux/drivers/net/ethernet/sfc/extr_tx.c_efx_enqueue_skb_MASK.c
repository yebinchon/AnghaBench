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
struct sk_buff {unsigned int len; scalar_t__ data_len; } ;
struct efx_tx_queue {unsigned int insert_count; int (* handle_tso ) (struct efx_tx_queue*,struct sk_buff*,int*) ;int xmit_more_available; unsigned int tso_packets; scalar_t__ tx_packets; int /*<<< orphan*/  tso_bursts; int /*<<< orphan*/  core_txq; int /*<<< orphan*/  cb_packets; int /*<<< orphan*/  pio_packets; int /*<<< orphan*/  tso_fallbacks; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {unsigned int gso_segs; } ;

/* Variables and functions */
 unsigned int EFX_TX_CB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct efx_tx_queue*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct efx_tx_queue*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_tx_queue*,unsigned int) ; 
 scalar_t__ FUNC6 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_tx_queue*) ; 
 unsigned int efx_piobuf_size ; 
 scalar_t__ FUNC8 (struct efx_tx_queue*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_tx_queue*) ; 
 struct efx_tx_queue* FUNC10 (struct efx_tx_queue*) ; 
 int FUNC11 (struct efx_tx_queue*,struct sk_buff*) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct efx_tx_queue*,struct sk_buff*,int*) ; 

netdev_tx_t FUNC16(struct efx_tx_queue *tx_queue, struct sk_buff *skb)
{
	unsigned int old_insert_count = tx_queue->insert_count;
	bool xmit_more = FUNC12();
	bool data_mapped = false;
	unsigned int segments;
	unsigned int skb_len;
	int rc;

	skb_len = skb->len;
	segments = FUNC13(skb) ? FUNC14(skb)->gso_segs : 0;
	if (segments == 1)
		segments = 0; /* Don't use TSO for a single segment. */

	/* Handle TSO first - it's *possible* (although unlikely) that we might
	 * be passed a packet to segment that's smaller than the copybreak/PIO
	 * size limit.
	 */
	if (segments) {
		FUNC0(!tx_queue->handle_tso);
		rc = tx_queue->handle_tso(tx_queue, skb, &data_mapped);
		if (rc == -EINVAL) {
			rc = FUNC11(tx_queue, skb);
			tx_queue->tso_fallbacks++;
			if (rc == 0)
				return 0;
		}
		if (rc)
			goto err;
#ifdef EFX_USE_PIO
	} else if (skb_len <= efx_piobuf_size && !xmit_more &&
		   efx_nic_may_tx_pio(tx_queue)) {
		/* Use PIO for short packets with an empty queue. */
		if (efx_enqueue_skb_pio(tx_queue, skb))
			goto err;
		tx_queue->pio_packets++;
		data_mapped = true;
#endif
	} else if (skb->data_len && skb_len <= EFX_TX_CB_SIZE) {
		/* Pad short packets or coalesce short fragmented packets. */
		if (FUNC3(tx_queue, skb))
			goto err;
		tx_queue->cb_packets++;
		data_mapped = true;
	}

	/* Map for DMA and create descriptors if we haven't done so already. */
	if (!data_mapped && (FUNC8(tx_queue, skb, segments)))
		goto err;

	FUNC9(tx_queue);

	/* Pass off to hardware */
	if (FUNC1(tx_queue->core_txq, skb_len, xmit_more)) {
		struct efx_tx_queue *txq2 = FUNC10(tx_queue);

		/* There could be packets left on the partner queue if
		 * xmit_more was set. If we do not push those they
		 * could be left for a long time and cause a netdev watchdog.
		 */
		if (txq2->xmit_more_available)
			FUNC7(txq2);

		FUNC7(tx_queue);
	} else {
		tx_queue->xmit_more_available = xmit_more;
	}

	if (segments) {
		tx_queue->tso_bursts++;
		tx_queue->tso_packets += segments;
		tx_queue->tx_packets  += segments;
	} else {
		tx_queue->tx_packets++;
	}

	return NETDEV_TX_OK;


err:
	FUNC5(tx_queue, old_insert_count);
	FUNC2(skb);

	/* If we're not expecting another transmit and we had something to push
	 * on this queue or a partner queue then we need to push here to get the
	 * previous packets out.
	 */
	if (!xmit_more) {
		struct efx_tx_queue *txq2 = FUNC10(tx_queue);

		if (txq2->xmit_more_available)
			FUNC7(txq2);

		FUNC7(tx_queue);
	}

	return NETDEV_TX_OK;
}