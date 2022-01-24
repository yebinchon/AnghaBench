#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tx_queue {int index; scalar_t__ tx_desc_count; int tx_used_desc; char* tx_desc_mapping; int tx_ring_size; int /*<<< orphan*/  tx_skb; struct tx_desc* tx_desc_area; } ;
struct tx_desc {int cmd_sts; int /*<<< orphan*/  byte_cnt; int /*<<< orphan*/  buf_ptr; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct mv643xx_eth_private {int work_tx; TYPE_3__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_2__ stats; TYPE_1__ dev; } ;

/* Variables and functions */
 int BUFFER_OWNED_BY_DMA ; 
 char DESC_DMA_MAP_PAGE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ERROR_SUMMARY ; 
 int /*<<< orphan*/  FUNC0 (struct tx_queue*,int /*<<< orphan*/ ) ; 
 int TX_ENABLE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 struct mv643xx_eth_private* FUNC10 (struct tx_queue*) ; 

__attribute__((used)) static int FUNC11(struct tx_queue *txq, int budget, int force)
{
	struct mv643xx_eth_private *mp = FUNC10(txq);
	struct netdev_queue *nq = FUNC8(mp->dev, txq->index);
	int reclaimed;

	FUNC2(nq);

	reclaimed = 0;
	while (reclaimed < budget && txq->tx_desc_count > 0) {
		int tx_index;
		struct tx_desc *desc;
		u32 cmd_sts;
		char desc_dma_map;

		tx_index = txq->tx_used_desc;
		desc = &txq->tx_desc_area[tx_index];
		desc_dma_map = txq->tx_desc_mapping[tx_index];

		cmd_sts = desc->cmd_sts;

		if (cmd_sts & BUFFER_OWNED_BY_DMA) {
			if (!force)
				break;
			desc->cmd_sts = cmd_sts & ~BUFFER_OWNED_BY_DMA;
		}

		txq->tx_used_desc = tx_index + 1;
		if (txq->tx_used_desc == txq->tx_ring_size)
			txq->tx_used_desc = 0;

		reclaimed++;
		txq->tx_desc_count--;

		if (!FUNC0(txq, desc->buf_ptr)) {

			if (desc_dma_map == DESC_DMA_MAP_PAGE)
				FUNC6(mp->dev->dev.parent,
					       desc->buf_ptr,
					       desc->byte_cnt,
					       DMA_TO_DEVICE);
			else
				FUNC7(mp->dev->dev.parent,
						 desc->buf_ptr,
						 desc->byte_cnt,
						 DMA_TO_DEVICE);
		}

		if (cmd_sts & TX_ENABLE_INTERRUPT) {
			struct sk_buff *skb = FUNC4(&txq->tx_skb);

			if (!FUNC1(!skb))
				FUNC5(skb);
		}

		if (cmd_sts & ERROR_SUMMARY) {
			FUNC9(mp->dev, "tx error\n");
			mp->dev->stats.tx_errors++;
		}

	}

	FUNC3(nq);

	if (reclaimed < budget)
		mp->work_tx &= ~(1 << txq->index);

	return reclaimed;
}