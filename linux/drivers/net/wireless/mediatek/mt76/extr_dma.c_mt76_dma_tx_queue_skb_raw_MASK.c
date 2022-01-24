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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct mt76_queue_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct mt76_queue {int /*<<< orphan*/  lock; } ;
struct mt76_dev {int /*<<< orphan*/  dev; TYPE_1__* q_tx; } ;
typedef  enum mt76_txq_id { ____Placeholder_mt76_txq_id } mt76_txq_id ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct mt76_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,struct mt76_queue*,struct mt76_queue_buf*,int,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76_dev*,struct mt76_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct mt76_dev *dev, enum mt76_txq_id qid,
			  struct sk_buff *skb, u32 tx_info)
{
	struct mt76_queue *q = dev->q_tx[qid].q;
	struct mt76_queue_buf buf;
	dma_addr_t addr;

	addr = FUNC0(dev->dev, skb->data, skb->len,
			      DMA_TO_DEVICE);
	if (FUNC6(FUNC1(dev->dev, addr)))
		return -ENOMEM;

	buf.addr = addr;
	buf.len = skb->len;

	FUNC4(&q->lock);
	FUNC2(dev, q, &buf, 1, tx_info, skb, NULL);
	FUNC3(dev, q);
	FUNC5(&q->lock);

	return 0;
}