#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct lan743x_tx {int /*<<< orphan*/  ring_lock; scalar_t__ channel_number; struct lan743x_adapter* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct lan743x_adapter {struct lan743x_tx* tx; TYPE_3__* rx; int /*<<< orphan*/  dp_lock; TYPE_2__* pdev; TYPE_1__ intr; } ;
struct TYPE_6__ {int channel_number; struct lan743x_adapter* adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_EN_CLR ; 
 int LAN743X_USED_RX_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct lan743x_adapter*) ; 
 int FUNC2 (struct lan743x_adapter*) ; 
 int FUNC3 (struct lan743x_adapter*) ; 
 int FUNC4 (struct lan743x_adapter*) ; 
 int FUNC5 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct lan743x_adapter *adapter,
				 struct pci_dev *pdev)
{
	struct lan743x_tx *tx;
	int index;
	int ret;

	adapter->intr.irq = adapter->pdev->irq;
	FUNC0(adapter, INT_EN_CLR, 0xFFFFFFFF);
	FUNC7(&adapter->dp_lock);

	ret = FUNC2(adapter);
	if (ret)
		return ret;

	ret = FUNC3(adapter);
	if (ret)
		return ret;

	ret = FUNC4(adapter);
	if (ret)
		return ret;

	ret = FUNC5(adapter);
	if (ret)
		return ret;

	FUNC6(adapter);

	ret = FUNC1(adapter);
	if (ret)
		return ret;

	for (index = 0; index < LAN743X_USED_RX_CHANNELS; index++) {
		adapter->rx[index].adapter = adapter;
		adapter->rx[index].channel_number = index;
	}

	tx = &adapter->tx[0];
	tx->adapter = adapter;
	tx->channel_number = 0;
	FUNC8(&tx->ring_lock);
	return 0;
}