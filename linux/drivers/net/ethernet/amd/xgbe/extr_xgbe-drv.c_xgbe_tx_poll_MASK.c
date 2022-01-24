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
struct xgbe_ring_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct xgbe_ring_data {TYPE_1__ tx; struct xgbe_ring_desc* rdesc; } ;
struct TYPE_4__ {int queue_stopped; } ;
struct xgbe_ring {unsigned int cur; unsigned int dirty; TYPE_2__ tx; } ;
struct xgbe_desc_if {int /*<<< orphan*/  (* unmap_rdata ) (struct xgbe_prv_data*,struct xgbe_ring_data*) ;} ;
struct xgbe_hw_if {int /*<<< orphan*/  (* tx_desc_reset ) (struct xgbe_ring_data*) ;scalar_t__ (* is_last_desc ) (struct xgbe_ring_desc*) ;int /*<<< orphan*/  (* tx_complete ) (struct xgbe_ring_desc*) ;} ;
struct xgbe_prv_data {struct net_device* netdev; struct xgbe_desc_if desc_if; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int /*<<< orphan*/  queue_index; struct xgbe_ring* tx_ring; struct xgbe_prv_data* pdata; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,unsigned int) ; 
 int XGBE_TX_DESC_MAX_PROC ; 
 scalar_t__ XGBE_TX_DESC_MIN_FREE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct netdev_queue* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_ring_desc*) ; 
 scalar_t__ FUNC9 (struct xgbe_ring_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*,struct xgbe_ring_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgbe_ring_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct xgbe_prv_data*,struct xgbe_ring*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct xgbe_ring*) ; 

__attribute__((used)) static int FUNC14(struct xgbe_channel *channel)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	struct xgbe_ring *ring = channel->tx_ring;
	struct xgbe_ring_data *rdata;
	struct xgbe_ring_desc *rdesc;
	struct net_device *netdev = pdata->netdev;
	struct netdev_queue *txq;
	int processed = 0;
	unsigned int tx_packets = 0, tx_bytes = 0;
	unsigned int cur;

	FUNC0("-->xgbe_tx_poll\n");

	/* Nothing to do if there isn't a Tx ring for this channel */
	if (!ring)
		return 0;

	cur = ring->cur;

	/* Be sure we get ring->cur before accessing descriptor data */
	FUNC7();

	txq = FUNC3(netdev, channel->queue_index);

	while ((processed < XGBE_TX_DESC_MAX_PROC) &&
	       (ring->dirty != cur)) {
		rdata = FUNC1(ring, ring->dirty);
		rdesc = rdata->rdesc;

		if (!hw_if->tx_complete(rdesc))
			break;

		/* Make sure descriptor fields are read after reading the OWN
		 * bit */
		FUNC2();

		if (FUNC5(pdata))
			FUNC12(pdata, ring, ring->dirty, 1, 0);

		if (hw_if->is_last_desc(rdesc)) {
			tx_packets += rdata->tx.packets;
			tx_bytes += rdata->tx.bytes;
		}

		/* Free the SKB and reset the descriptor for re-use */
		desc_if->unmap_rdata(pdata, rdata);
		hw_if->tx_desc_reset(rdata);

		processed++;
		ring->dirty++;
	}

	if (!processed)
		return 0;

	FUNC4(txq, tx_packets, tx_bytes);

	if ((ring->tx.queue_stopped == 1) &&
	    (FUNC13(ring) > XGBE_TX_DESC_MIN_FREE)) {
		ring->tx.queue_stopped = 0;
		FUNC6(txq);
	}

	FUNC0("<--xgbe_tx_poll: processed=%d\n", processed);

	return processed;
}