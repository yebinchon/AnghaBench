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
struct TYPE_4__ {int /*<<< orphan*/ * napi; int /*<<< orphan*/  tx_napi; scalar_t__ csa_complete; int /*<<< orphan*/  pre_tbtt_tasklet; TYPE_1__ mmio; int /*<<< orphan*/  state; } ;
struct mt7603_dev {TYPE_2__ mt76; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int MT_HW_INT3_PRE_TBTT0 ; 
 int MT_HW_INT3_TBTT0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MT_INT_MAC_IRQ3 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MT_INT_SOURCE_CSR ; 
 int MT_INT_TX_DONE_ALL ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

irqreturn_t FUNC9(int irq, void *dev_instance)
{
	struct mt7603_dev *dev = dev_instance;
	u32 intr;

	intr = FUNC4(dev, MT_INT_SOURCE_CSR);
	FUNC5(dev, MT_INT_SOURCE_CSR, intr);

	if (!FUNC8(MT76_STATE_INITIALIZED, &dev->mt76.state))
		return IRQ_NONE;

	intr &= dev->mt76.mmio.irqmask;

	if (intr & MT_INT_MAC_IRQ3) {
		u32 hwintr = FUNC4(dev, FUNC0(3));

		FUNC5(dev, FUNC0(3), hwintr);
		if (hwintr & MT_HW_INT3_PRE_TBTT0)
			FUNC7(&dev->mt76.pre_tbtt_tasklet);

		if ((hwintr & MT_HW_INT3_TBTT0) && dev->mt76.csa_complete)
			FUNC3(&dev->mt76);
	}

	if (intr & MT_INT_TX_DONE_ALL) {
		FUNC2(dev, MT_INT_TX_DONE_ALL);
		FUNC6(&dev->mt76.tx_napi);
	}

	if (intr & FUNC1(0)) {
		FUNC2(dev, FUNC1(0));
		FUNC6(&dev->mt76.napi[0]);
	}

	if (intr & FUNC1(1)) {
		FUNC2(dev, FUNC1(1));
		FUNC6(&dev->mt76.napi[1]);
	}

	return IRQ_HANDLED;
}