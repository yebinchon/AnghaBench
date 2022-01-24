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
typedef  int u32 ;
struct TYPE_3__ {int irqmask; } ;
struct TYPE_4__ {int /*<<< orphan*/ * napi; int /*<<< orphan*/  tx_napi; TYPE_1__ mmio; int /*<<< orphan*/  state; } ;
struct mt7615_dev {TYPE_2__ mt76; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT_INT_SOURCE_CSR ; 
 int MT_INT_TX_DONE_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct mt7615_dev*,int) ; 
 int FUNC2 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_instance)
{
	struct mt7615_dev *dev = dev_instance;
	u32 intr;

	intr = FUNC2(dev, MT_INT_SOURCE_CSR);
	FUNC3(dev, MT_INT_SOURCE_CSR, intr);

	if (!FUNC5(MT76_STATE_INITIALIZED, &dev->mt76.state))
		return IRQ_NONE;

	intr &= dev->mt76.mmio.irqmask;

	if (intr & MT_INT_TX_DONE_ALL) {
		FUNC1(dev, MT_INT_TX_DONE_ALL);
		FUNC4(&dev->mt76.tx_napi);
	}

	if (intr & FUNC0(0)) {
		FUNC1(dev, FUNC0(0));
		FUNC4(&dev->mt76.napi[0]);
	}

	if (intr & FUNC0(1)) {
		FUNC1(dev, FUNC0(1));
		FUNC4(&dev->mt76.napi[1]);
	}

	return IRQ_HANDLED;
}