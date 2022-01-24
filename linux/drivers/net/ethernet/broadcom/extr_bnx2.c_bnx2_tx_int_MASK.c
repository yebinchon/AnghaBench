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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  end; } ;
struct netdev_queue {int dummy; } ;
struct bnx2_tx_ring_info {scalar_t__ tx_cons; scalar_t__ hw_tx_cons; struct bnx2_sw_tx_bd* tx_buf_ring; } ;
struct bnx2_sw_tx_bd {scalar_t__ nr_frags; struct sk_buff* skb; scalar_t__ is_gso; } ;
struct bnx2_napi {struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {scalar_t__ tx_wake_thresh; TYPE_1__* pdev; int /*<<< orphan*/  dev; struct bnx2_napi* bnx2_napi; } ;
typedef  scalar_t__ s16 ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BNX2_MAX_TX_DESC_CNT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 scalar_t__ FUNC4 (struct bnx2_napi*) ; 
 scalar_t__ FUNC5 (struct bnx2*,struct bnx2_tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2_sw_tx_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 struct netdev_queue* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*,int,unsigned int) ; 
 int FUNC12 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 TYPE_2__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static int
FUNC21(struct bnx2 *bp, struct bnx2_napi *bnapi, int budget)
{
	struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;
	u16 hw_cons, sw_cons, sw_ring_cons;
	int tx_pkt = 0, index;
	unsigned int tx_bytes = 0;
	struct netdev_queue *txq;

	index = (bnapi - bp->bnx2_napi);
	txq = FUNC10(bp->dev, index);

	hw_cons = FUNC4(bnapi);
	sw_cons = txr->tx_cons;

	while (sw_cons != hw_cons) {
		struct bnx2_sw_tx_bd *tx_buf;
		struct sk_buff *skb;
		int i, last;

		sw_ring_cons = FUNC1(sw_cons);

		tx_buf = &txr->tx_buf_ring[sw_ring_cons];
		skb = tx_buf->skb;

		/* prefetch skb_end_pointer() to speedup skb_shinfo(skb) */
		FUNC14(&skb->end);

		/* partial BD completions possible with TSO packets */
		if (tx_buf->is_gso) {
			u16 last_idx, last_ring_idx;

			last_idx = sw_cons + tx_buf->nr_frags + 1;
			last_ring_idx = sw_ring_cons + tx_buf->nr_frags + 1;
			if (FUNC20(last_ring_idx >= BNX2_MAX_TX_DESC_CNT)) {
				last_idx++;
			}
			if (((s16) ((s16) last_idx - (s16) hw_cons)) > 0) {
				break;
			}
		}

		FUNC9(&bp->pdev->dev, FUNC7(tx_buf, mapping),
			FUNC16(skb), PCI_DMA_TODEVICE);

		tx_buf->skb = NULL;
		last = tx_buf->nr_frags;

		for (i = 0; i < last; i++) {
			struct bnx2_sw_tx_bd *tx_buf;

			sw_cons = FUNC0(sw_cons);

			tx_buf = &txr->tx_buf_ring[FUNC1(sw_cons)];
			FUNC8(&bp->pdev->dev,
				FUNC7(tx_buf, mapping),
				FUNC15(&FUNC17(skb)->frags[i]),
				PCI_DMA_TODEVICE);
		}

		sw_cons = FUNC0(sw_cons);

		tx_bytes += skb->len;
		FUNC6(skb);
		tx_pkt++;
		if (tx_pkt == budget)
			break;

		if (hw_cons == sw_cons)
			hw_cons = FUNC4(bnapi);
	}

	FUNC11(txq, tx_pkt, tx_bytes);
	txr->hw_tx_cons = hw_cons;
	txr->tx_cons = sw_cons;

	/* Need to make the tx_cons update visible to bnx2_start_xmit()
	 * before checking for netif_tx_queue_stopped().  Without the
	 * memory barrier, there is a small possibility that bnx2_start_xmit()
	 * will miss it and cause the queue to be stopped forever.
	 */
	FUNC18();

	if (FUNC20(FUNC12(txq)) &&
		     (FUNC5(bp, txr) > bp->tx_wake_thresh)) {
		FUNC2(txq, FUNC19());
		if ((FUNC12(txq)) &&
		    (FUNC5(bp, txr) > bp->tx_wake_thresh))
			FUNC13(txq);
		FUNC3(txq);
	}

	return tx_pkt;
}