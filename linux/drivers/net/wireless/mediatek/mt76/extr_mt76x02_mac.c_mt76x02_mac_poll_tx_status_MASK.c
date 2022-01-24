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
typedef  int u8 ;
struct mt76x02_tx_status {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct mt76x02_dev {int /*<<< orphan*/  txstatus_fifo; int /*<<< orphan*/  txstatus_fifo_lock; TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mt76x02_tx_status) ; 
 int FUNC2 (struct mt76x02_dev*,struct mt76x02_tx_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,struct mt76x02_tx_status*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*) ; 

void FUNC8(struct mt76x02_dev *dev, bool irq)
{
	struct mt76x02_tx_status stat = {};
	u8 update = 1;
	bool ret;

	if (!FUNC6(MT76_STATE_RUNNING, &dev->mt76.state))
		return;

	FUNC7(dev);

	while (!irq || !FUNC0(&dev->txstatus_fifo)) {
		if (!FUNC4(&dev->txstatus_fifo_lock))
			break;

		ret = FUNC2(dev, &stat);
		FUNC5(&dev->txstatus_fifo_lock);

		if (!ret)
			break;

		if (!irq) {
			FUNC3(dev, &stat, &update);
			continue;
		}

		FUNC1(&dev->txstatus_fifo, stat);
	}
}