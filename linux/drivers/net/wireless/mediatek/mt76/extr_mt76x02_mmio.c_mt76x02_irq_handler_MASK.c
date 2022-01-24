#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  dfs_tasklet; } ;
struct TYPE_5__ {int irqmask; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_napi; TYPE_2__* q_tx; scalar_t__ csa_complete; int /*<<< orphan*/  pre_tbtt_tasklet; int /*<<< orphan*/ * napi; TYPE_1__ mmio; int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_3__ dfs_pd; TYPE_4__ mt76; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int MT_INT_GPTIMER ; 
 int MT_INT_PRE_TBTT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT_INT_SOURCE_CSR ; 
 int MT_INT_TBTT ; 
 int MT_INT_TX_DONE_ALL ; 
 int MT_INT_TX_STAT ; 
 size_t MT_TXQ_PSD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*,int,int) ; 

irqreturn_t FUNC11(int irq, void *dev_instance)
{
	struct mt76x02_dev *dev = dev_instance;
	u32 intr;

	intr = FUNC3(dev, MT_INT_SOURCE_CSR);
	FUNC4(dev, MT_INT_SOURCE_CSR, intr);

	if (!FUNC9(MT76_STATE_INITIALIZED, &dev->mt76.state))
		return IRQ_NONE;

	FUNC10(dev, intr, dev->mt76.mmio.irqmask);

	intr &= dev->mt76.mmio.irqmask;

	if (intr & FUNC0(0)) {
		FUNC5(dev, FUNC0(0));
		FUNC7(&dev->mt76.napi[0]);
	}

	if (intr & FUNC0(1)) {
		FUNC5(dev, FUNC0(1));
		FUNC7(&dev->mt76.napi[1]);
	}

	if (intr & MT_INT_PRE_TBTT)
		FUNC8(&dev->mt76.pre_tbtt_tasklet);

	/* send buffered multicast frames now */
	if (intr & MT_INT_TBTT) {
		if (dev->mt76.csa_complete)
			FUNC1(&dev->mt76);
		else
			FUNC2(dev, dev->mt76.q_tx[MT_TXQ_PSD].q);
	}

	if (intr & MT_INT_TX_STAT)
		FUNC6(dev, true);

	if (intr & (MT_INT_TX_STAT | MT_INT_TX_DONE_ALL)) {
		FUNC5(dev, MT_INT_TX_DONE_ALL);
		FUNC7(&dev->mt76.tx_napi);
	}

	if (intr & MT_INT_GPTIMER) {
		FUNC5(dev, MT_INT_GPTIMER);
		FUNC8(&dev->dfs_pd.dfs_tasklet);
	}

	return IRQ_HANDLED;
}