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
typedef  size_t u16 ;
struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct netdev_queue {int dummy; } ;
struct bnxt_tx_ring_info {size_t tx_cons; scalar_t__ dev_state; struct bnxt_sw_tx_bd* tx_buf_ring; int /*<<< orphan*/  txq_index; } ;
struct bnxt_sw_tx_bd {int nr_frags; scalar_t__ is_push; struct sk_buff* skb; } ;
struct bnxt_napi {struct bnxt_tx_ring_info* tx_ring; } ;
struct bnxt {scalar_t__ tx_wake_thresh; struct pci_dev* pdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ BNXT_DEV_STATE_CLOSING ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 scalar_t__ FUNC3 (struct bnxt*,struct bnxt_tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_sw_tx_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 struct netdev_queue* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct netdev_queue*,int,unsigned int) ; 
 scalar_t__ FUNC10 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct bnxt *bp, struct bnxt_napi *bnapi, int nr_pkts)
{
	struct bnxt_tx_ring_info *txr = bnapi->tx_ring;
	struct netdev_queue *txq = FUNC8(bp->dev, txr->txq_index);
	u16 cons = txr->tx_cons;
	struct pci_dev *pdev = bp->pdev;
	int i;
	unsigned int tx_bytes = 0;

	for (i = 0; i < nr_pkts; i++) {
		struct bnxt_sw_tx_bd *tx_buf;
		struct sk_buff *skb;
		int j, last;

		tx_buf = &txr->tx_buf_ring[cons];
		cons = FUNC0(cons);
		skb = tx_buf->skb;
		tx_buf->skb = NULL;

		if (tx_buf->is_push) {
			tx_buf->is_push = 0;
			goto next_tx_int;
		}

		FUNC7(&pdev->dev, FUNC5(tx_buf, mapping),
				 FUNC13(skb), PCI_DMA_TODEVICE);
		last = tx_buf->nr_frags;

		for (j = 0; j < last; j++) {
			cons = FUNC0(cons);
			tx_buf = &txr->tx_buf_ring[cons];
			FUNC6(
				&pdev->dev,
				FUNC5(tx_buf, mapping),
				FUNC12(&FUNC14(skb)->frags[j]),
				PCI_DMA_TODEVICE);
		}

next_tx_int:
		cons = FUNC0(cons);

		tx_bytes += skb->len;
		FUNC4(skb);
	}

	FUNC9(txq, nr_pkts, tx_bytes);
	txr->tx_cons = cons;

	/* Need to make the tx_cons update visible to bnxt_start_xmit()
	 * before checking for netif_tx_queue_stopped().  Without the
	 * memory barrier, there is a small possibility that bnxt_start_xmit()
	 * will miss it and cause the queue to be stopped forever.
	 */
	FUNC15();

	if (FUNC17(FUNC10(txq)) &&
	    (FUNC3(bp, txr) > bp->tx_wake_thresh)) {
		FUNC1(txq, FUNC16());
		if (FUNC10(txq) &&
		    FUNC3(bp, txr) > bp->tx_wake_thresh &&
		    txr->dev_state != BNXT_DEV_STATE_CLOSING)
			FUNC11(txq);
		FUNC2(txq);
	}
}