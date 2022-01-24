#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct mt76_rx_tid {int size; int stopped; int /*<<< orphan*/  lock; scalar_t__ nframes; struct sk_buff** reorder_buf; int /*<<< orphan*/  reorder_work; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mt76_dev *dev, struct mt76_rx_tid *tid)
{
	u8 size = tid->size;
	int i;

	FUNC0(&tid->reorder_work);

	FUNC2(&tid->lock);

	tid->stopped = true;
	for (i = 0; tid->nframes && i < size; i++) {
		struct sk_buff *skb = tid->reorder_buf[i];

		if (!skb)
			continue;

		tid->nframes--;
		FUNC1(skb);
	}

	FUNC3(&tid->lock);
}