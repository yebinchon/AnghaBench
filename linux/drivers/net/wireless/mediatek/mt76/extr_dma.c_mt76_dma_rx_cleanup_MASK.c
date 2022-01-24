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
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pagecnt_bias; int /*<<< orphan*/  va; } ;
struct mt76_queue {TYPE_1__ rx_page; int /*<<< orphan*/  lock; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct mt76_dev*,struct mt76_queue*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct mt76_dev *dev, struct mt76_queue *q)
{
	struct page *page;
	void *buf;
	bool more;

	FUNC4(&q->lock);
	do {
		buf = FUNC2(dev, q, true, NULL, NULL, &more);
		if (!buf)
			break;

		FUNC3(buf);
	} while (1);
	FUNC5(&q->lock);

	if (!q->rx_page.va)
		return;

	page = FUNC6(q->rx_page.va);
	FUNC0(page, q->rx_page.pagecnt_bias);
	FUNC1(&q->rx_page, 0, sizeof(q->rx_page));
}