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
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  end; } ;
struct netdev_queue {int dummy; } ;
struct ena_tx_buffer {scalar_t__ tx_descs; scalar_t__ last_jiffies; struct sk_buff* skb; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_wakeup; } ;
struct ena_ring {size_t next_to_clean; size_t* free_ids; int /*<<< orphan*/  syncp; TYPE_1__ tx_stats; TYPE_2__* adapter; int /*<<< orphan*/  ena_com_io_sq; int /*<<< orphan*/  qid; int /*<<< orphan*/  netdev; int /*<<< orphan*/  ena_com_io_cq; int /*<<< orphan*/  ring_size; struct ena_tx_buffer* tx_buffer_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENA_TX_WAKEUP_THRESH ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_ring*,struct ena_tx_buffer*) ; 
 struct netdev_queue* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC12 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_done ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int) ; 
 int FUNC21 (struct ena_ring*,size_t) ; 

__attribute__((used)) static int FUNC22(struct ena_ring *tx_ring, u32 budget)
{
	struct netdev_queue *txq;
	bool above_thresh;
	u32 tx_bytes = 0;
	u32 total_done = 0;
	u16 next_to_clean;
	u16 req_id;
	int tx_pkts = 0;
	int rc;

	next_to_clean = tx_ring->next_to_clean;
	txq = FUNC9(tx_ring->netdev, tx_ring->qid);

	while (tx_pkts < budget) {
		struct ena_tx_buffer *tx_info;
		struct sk_buff *skb;

		rc = FUNC6(tx_ring->ena_com_io_cq,
						&req_id);
		if (rc)
			break;

		rc = FUNC21(tx_ring, req_id);
		if (rc)
			break;

		tx_info = &tx_ring->tx_buffer_info[req_id];
		skb = tx_info->skb;

		/* prefetch skb_end_pointer() to speedup skb_shinfo(skb) */
		FUNC14(&skb->end);

		tx_info->skb = NULL;
		tx_info->last_jiffies = 0;

		FUNC8(tx_ring, tx_info);

		FUNC11(tx_ring->adapter, tx_done, tx_ring->netdev,
			  "tx_poll: q %d skb %p completed\n", tx_ring->qid,
			  skb);

		tx_bytes += skb->len;
		FUNC3(skb);
		tx_pkts++;
		total_done += tx_info->tx_descs;

		tx_ring->free_ids[next_to_clean] = req_id;
		next_to_clean = FUNC0(next_to_clean,
						     tx_ring->ring_size);
	}

	tx_ring->next_to_clean = next_to_clean;
	FUNC4(tx_ring->ena_com_io_sq, total_done);
	FUNC7(tx_ring->ena_com_io_cq);

	FUNC10(txq, tx_pkts, tx_bytes);

	FUNC11(tx_ring->adapter, tx_done, tx_ring->netdev,
		  "tx_poll: q %d done. total pkts: %d\n",
		  tx_ring->qid, tx_pkts);

	/* need to make the rings circular update visible to
	 * ena_start_xmit() before checking for netif_queue_stopped().
	 */
	FUNC15();

	above_thresh = FUNC5(tx_ring->ena_com_io_sq,
						    ENA_TX_WAKEUP_THRESH);
	if (FUNC20(FUNC12(txq) && above_thresh)) {
		FUNC1(txq, FUNC16());
		above_thresh =
			FUNC5(tx_ring->ena_com_io_sq,
						     ENA_TX_WAKEUP_THRESH);
		if (FUNC12(txq) && above_thresh &&
		    FUNC17(ENA_FLAG_DEV_UP, &tx_ring->adapter->flags)) {
			FUNC13(txq);
			FUNC18(&tx_ring->syncp);
			tx_ring->tx_stats.queue_wakeup++;
			FUNC19(&tx_ring->syncp);
		}
		FUNC2(txq);
	}

	return tx_pkts;
}