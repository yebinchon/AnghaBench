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
struct sk_buff {int dummy; } ;
struct bnx2_tx_ring_info {struct bnx2_sw_tx_bd* tx_buf_ring; } ;
struct bnx2_sw_tx_bd {int nr_frags; struct sk_buff* skb; } ;
struct bnx2_napi {struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {int num_tx_rings; int /*<<< orphan*/  dev; TYPE_1__* pdev; struct bnx2_napi* bnx2_napi; } ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BNX2_TX_DESC_CNT ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2_sw_tx_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 TYPE_2__* FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC11(struct bnx2 *bp)
{
	int i;

	for (i = 0; i < bp->num_tx_rings; i++) {
		struct bnx2_napi *bnapi = &bp->bnx2_napi[i];
		struct bnx2_tx_ring_info *txr = &bnapi->tx_ring;
		int j;

		if (!txr->tx_buf_ring)
			continue;

		for (j = 0; j < BNX2_TX_DESC_CNT; ) {
			struct bnx2_sw_tx_bd *tx_buf = &txr->tx_buf_ring[j];
			struct sk_buff *skb = tx_buf->skb;
			int k, last;

			if (!skb) {
				j = FUNC0(j);
				continue;
			}

			FUNC5(&bp->pdev->dev,
					 FUNC3(tx_buf, mapping),
					 FUNC9(skb),
					 PCI_DMA_TODEVICE);

			tx_buf->skb = NULL;

			last = tx_buf->nr_frags;
			j = FUNC0(j);
			for (k = 0; k < last; k++, j = FUNC0(j)) {
				tx_buf = &txr->tx_buf_ring[FUNC1(j)];
				FUNC4(&bp->pdev->dev,
					FUNC3(tx_buf, mapping),
					FUNC8(&FUNC10(skb)->frags[k]),
					PCI_DMA_TODEVICE);
			}
			FUNC2(skb);
		}
		FUNC7(FUNC6(bp->dev, i));
	}
}