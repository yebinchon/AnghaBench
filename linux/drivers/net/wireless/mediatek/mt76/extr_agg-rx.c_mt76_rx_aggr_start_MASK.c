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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mt76_wcid {int /*<<< orphan*/ * aggr; } ;
struct mt76_rx_tid {size_t size; int /*<<< orphan*/  lock; int /*<<< orphan*/  reorder_work; int /*<<< orphan*/  head; struct mt76_dev* dev; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mt76_rx_tid* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt76_rx_aggr_reorder_work ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,struct mt76_wcid*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mt76_rx_tid*) ; 
 int /*<<< orphan*/  reorder_buf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76_rx_tid*,int /*<<< orphan*/ ,size_t) ; 

int FUNC6(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tidno,
		       u16 ssn, u8 size)
{
	struct mt76_rx_tid *tid;

	FUNC2(dev, wcid, tidno);

	tid = FUNC1(FUNC5(tid, reorder_buf, size), GFP_KERNEL);
	if (!tid)
		return -ENOMEM;

	tid->dev = dev;
	tid->head = ssn;
	tid->size = size;
	FUNC0(&tid->reorder_work, mt76_rx_aggr_reorder_work);
	FUNC4(&tid->lock);

	FUNC3(wcid->aggr[tidno], tid);

	return 0;
}