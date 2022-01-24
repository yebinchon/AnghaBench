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
struct qlcnic_adapter {int drv_tx_rings; int flags; TYPE_1__* ahw; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {scalar_t__ diag_test; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_LOOPBACK_TEST ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct qlcnic_adapter *adapter)
{
	int ring;

	if (FUNC8(__QLCNIC_FW_ATTACHED, &adapter->state)) {
		FUNC6(adapter);
		for (ring = 0; ring < adapter->drv_tx_rings; ring++)
			FUNC7(adapter,
						 &adapter->tx_ring[ring]);

		if (FUNC1(adapter) &&
		    (adapter->flags & QLCNIC_MSIX_ENABLED) &&
		    FUNC5(adapter) &&
		    !adapter->ahw->diag_test)
				FUNC2(adapter, 0);

		if (FUNC3(adapter) &&
		    (adapter->flags & QLCNIC_MSIX_ENABLED)) {
			if (adapter->ahw->diag_test != QLCNIC_LOOPBACK_TEST)
				FUNC4(adapter, 0);
		}
		/* Allow dma queues to drain after context reset */
		FUNC0(20);
	}
}