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
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  va; } ;
struct mt76_queue {int ndesc; TYPE_2__ rx_page; TYPE_1__* entry; } ;
struct mt76_dev {struct mt76_queue* q_rx; } ;
struct TYPE_3__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 size_t MT_RXQ_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mt76_dev *dev)
{
	struct mt76_queue *q = &dev->q_rx[MT_RXQ_MAIN];
	struct page *page;
	int i;

	for (i = 0; i < q->ndesc; i++)
		FUNC2(q->entry[i].urb);

	if (!q->rx_page.va)
		return;

	page = FUNC3(q->rx_page.va);
	FUNC0(page, q->rx_page.pagecnt_bias);
	FUNC1(&q->rx_page, 0, sizeof(q->rx_page));
}