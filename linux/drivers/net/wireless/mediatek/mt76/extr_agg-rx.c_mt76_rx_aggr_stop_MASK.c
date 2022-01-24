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
struct mt76_wcid {int /*<<< orphan*/ * aggr; } ;
struct mt76_rx_tid {int dummy; } ;
struct mt76_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt76_rx_tid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_dev*,struct mt76_rx_tid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mt76_rx_tid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct mt76_dev *dev, struct mt76_wcid *wcid, u8 tidno)
{
	struct mt76_rx_tid *tid;

	FUNC4();

	tid = FUNC3(wcid->aggr[tidno]);
	if (tid) {
		FUNC2(wcid->aggr[tidno], NULL);
		FUNC1(dev, tid);
		FUNC0(tid, rcu_head);
	}

	FUNC5();
}