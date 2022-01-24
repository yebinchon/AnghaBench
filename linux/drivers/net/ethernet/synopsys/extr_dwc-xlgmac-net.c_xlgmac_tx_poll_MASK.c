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
struct TYPE_4__ {int queue_stopped; } ;
struct xlgmac_ring {unsigned int cur; unsigned int dirty; TYPE_2__ tx; } ;
struct xlgmac_hw_ops {int /*<<< orphan*/  (* tx_desc_reset ) (struct xlgmac_desc_data*) ;scalar_t__ (* is_last_desc ) (struct xlgmac_dma_desc*) ;int /*<<< orphan*/  (* tx_complete ) (struct xlgmac_dma_desc*) ;} ;
struct xlgmac_desc_ops {int /*<<< orphan*/  (* unmap_desc_data ) (struct xlgmac_pdata*,struct xlgmac_desc_data*) ;} ;
struct xlgmac_pdata {struct xlgmac_hw_ops hw_ops; struct xlgmac_desc_ops desc_ops; struct net_device* netdev; } ;
struct xlgmac_dma_desc {int dummy; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ packets; } ;
struct xlgmac_desc_data {TYPE_1__ tx; struct xlgmac_dma_desc* dma_desc; } ;
struct xlgmac_channel {int /*<<< orphan*/  queue_index; struct xlgmac_ring* tx_ring; struct xlgmac_pdata* pdata; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct xlgmac_desc_data* FUNC0 (struct xlgmac_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int XLGMAC_TX_DESC_MAX_PROC ; 
 scalar_t__ XLGMAC_TX_DESC_MIN_FREE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct netdev_queue* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct netdev_queue*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct xlgmac_dma_desc*) ; 
 scalar_t__ FUNC9 (struct xlgmac_dma_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct xlgmac_pdata*,struct xlgmac_desc_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct xlgmac_desc_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct xlgmac_pdata*,struct xlgmac_ring*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct xlgmac_ring*) ; 

__attribute__((used)) static int FUNC14(struct xlgmac_channel *channel)
{
	struct xlgmac_pdata *pdata = channel->pdata;
	struct xlgmac_ring *ring = channel->tx_ring;
	struct net_device *netdev = pdata->netdev;
	unsigned int tx_packets = 0, tx_bytes = 0;
	struct xlgmac_desc_data *desc_data;
	struct xlgmac_dma_desc *dma_desc;
	struct xlgmac_desc_ops *desc_ops;
	struct xlgmac_hw_ops *hw_ops;
	struct netdev_queue *txq;
	int processed = 0;
	unsigned int cur;

	desc_ops = &pdata->desc_ops;
	hw_ops = &pdata->hw_ops;

	/* Nothing to do if there isn't a Tx ring for this channel */
	if (!ring)
		return 0;

	cur = ring->cur;

	/* Be sure we get ring->cur before accessing descriptor data */
	FUNC7();

	txq = FUNC3(netdev, channel->queue_index);

	while ((processed < XLGMAC_TX_DESC_MAX_PROC) &&
	       (ring->dirty != cur)) {
		desc_data = FUNC0(ring, ring->dirty);
		dma_desc = desc_data->dma_desc;

		if (!hw_ops->tx_complete(dma_desc))
			break;

		/* Make sure descriptor fields are read after reading
		 * the OWN bit
		 */
		FUNC2();

		if (FUNC5(pdata))
			FUNC12(pdata, ring, ring->dirty, 1, 0);

		if (hw_ops->is_last_desc(dma_desc)) {
			tx_packets += desc_data->tx.packets;
			tx_bytes += desc_data->tx.bytes;
		}

		/* Free the SKB and reset the descriptor for re-use */
		desc_ops->unmap_desc_data(pdata, desc_data);
		hw_ops->tx_desc_reset(desc_data);

		processed++;
		ring->dirty++;
	}

	if (!processed)
		return 0;

	FUNC4(txq, tx_packets, tx_bytes);

	if ((ring->tx.queue_stopped == 1) &&
	    (FUNC13(ring) > XLGMAC_TX_DESC_MIN_FREE)) {
		ring->tx.queue_stopped = 0;
		FUNC6(txq);
	}

	FUNC1("processed=%d\n", processed);

	return processed;
}