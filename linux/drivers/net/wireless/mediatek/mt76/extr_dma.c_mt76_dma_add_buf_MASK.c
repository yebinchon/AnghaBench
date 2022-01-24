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
struct sk_buff {int dummy; } ;
struct mt76_queue_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct mt76_queue {size_t head; int ndesc; TYPE_1__* entry; int /*<<< orphan*/  queued; struct mt76_desc* desc; } ;
struct mt76_dev {int dummy; } ;
struct mt76_desc {int /*<<< orphan*/  ctrl; int /*<<< orphan*/  info; int /*<<< orphan*/  buf1; int /*<<< orphan*/  buf0; } ;
struct TYPE_2__ {int skip_buf0; struct sk_buff* skb; void* txwi; } ;

/* Variables and functions */
 void* DMA_DUMMY_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DMA_CTL_LAST_SEC0 ; 
 int /*<<< orphan*/  MT_DMA_CTL_LAST_SEC1 ; 
 int /*<<< orphan*/  MT_DMA_CTL_SD_LEN0 ; 
 int /*<<< orphan*/  MT_DMA_CTL_SD_LEN1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mt76_dev *dev, struct mt76_queue *q,
		 struct mt76_queue_buf *buf, int nbufs, u32 info,
		 struct sk_buff *skb, void *txwi)
{
	struct mt76_desc *desc;
	u32 ctrl;
	int i, idx = -1;

	if (txwi) {
		q->entry[q->head].txwi = DMA_DUMMY_DATA;
		q->entry[q->head].skip_buf0 = true;
	}

	for (i = 0; i < nbufs; i += 2, buf += 2) {
		u32 buf0 = buf[0].addr, buf1 = 0;

		ctrl = FUNC0(MT_DMA_CTL_SD_LEN0, buf[0].len);
		if (i < nbufs - 1) {
			buf1 = buf[1].addr;
			ctrl |= FUNC0(MT_DMA_CTL_SD_LEN1, buf[1].len);
		}

		if (i == nbufs - 1)
			ctrl |= MT_DMA_CTL_LAST_SEC0;
		else if (i == nbufs - 2)
			ctrl |= MT_DMA_CTL_LAST_SEC1;

		idx = q->head;
		q->head = (q->head + 1) % q->ndesc;

		desc = &q->desc[idx];

		FUNC1(desc->buf0, FUNC2(buf0));
		FUNC1(desc->buf1, FUNC2(buf1));
		FUNC1(desc->info, FUNC2(info));
		FUNC1(desc->ctrl, FUNC2(ctrl));

		q->queued++;
	}

	q->entry[idx].txwi = txwi;
	q->entry[idx].skb = skb;

	return idx;
}