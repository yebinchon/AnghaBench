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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct ionic_txq_sg_elem {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct ionic_txq_sg_desc {struct ionic_txq_sg_elem* elems; } ;
struct ionic_txq_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  cmd; } ;
struct ionic_tx_stats {int /*<<< orphan*/  clean; } ;
struct ionic_queue {int /*<<< orphan*/  wake; TYPE_2__* lif; } ;
struct ionic_desc_info {struct ionic_txq_desc* desc; struct ionic_txq_sg_desc* sg_desc; } ;
struct ionic_cq_info {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  netdev; TYPE_1__* ionic; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ IONIC_TXQ_DESC_FLAG_TSO_SOT ; 
 scalar_t__ IONIC_TXQ_DESC_OPCODE_TSO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ionic_queue*) ; 
 struct ionic_tx_stats* FUNC10 (struct ionic_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct ionic_queue *q, struct ionic_desc_info *desc_info,
			   struct ionic_cq_info *cq_info, void *cb_arg)
{
	struct ionic_txq_sg_desc *sg_desc = desc_info->sg_desc;
	struct ionic_txq_sg_elem *elem = sg_desc->elems;
	struct ionic_tx_stats *stats = FUNC10(q);
	struct ionic_txq_desc *desc = desc_info->desc;
	struct device *dev = q->lif->ionic->dev;
	u8 opcode, flags, nsge;
	u16 queue_index;
	unsigned int i;
	u64 addr;

	FUNC1(FUNC6(desc->cmd),
			    &opcode, &flags, &nsge, &addr);

	/* use unmap_single only if either this is not TSO,
	 * or this is first descriptor of a TSO
	 */
	if (opcode != IONIC_TXQ_DESC_OPCODE_TSO ||
	    flags & IONIC_TXQ_DESC_FLAG_TSO_SOT)
		FUNC4(dev, (dma_addr_t)addr,
				 FUNC5(desc->len), DMA_TO_DEVICE);
	else
		FUNC3(dev, (dma_addr_t)addr,
			       FUNC5(desc->len), DMA_TO_DEVICE);

	for (i = 0; i < nsge; i++, elem++)
		FUNC3(dev, (dma_addr_t)FUNC6(elem->addr),
			       FUNC5(elem->len), DMA_TO_DEVICE);

	if (cb_arg) {
		struct sk_buff *skb = cb_arg;
		u32 len = skb->len;

		queue_index = FUNC11(skb);
		if (FUNC12(FUNC0(q->lif->netdev,
						      queue_index))) {
			FUNC8(q->lif->netdev, queue_index);
			q->wake++;
		}
		FUNC2(skb);
		stats->clean++;
		FUNC7(FUNC9(q), 1, len);
	}
}