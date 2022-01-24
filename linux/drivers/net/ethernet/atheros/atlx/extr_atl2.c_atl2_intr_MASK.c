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
struct atl2_hw {int dummy; } ;
struct atl2_adapter {struct atl2_hw hw; TYPE_2__* netdev; int /*<<< orphan*/  reset_task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  tx_carrier_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int FUNC0 (struct atl2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl2_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int ISR_DIS_INT ; 
 int ISR_DMAR_TO_RST ; 
 int ISR_DMAW_TO_RST ; 
 int ISR_MANUAL ; 
 int ISR_PHY ; 
 int ISR_PHY_LINKDOWN ; 
 int ISR_RX_EVENT ; 
 int ISR_TX_EVENT ; 
 int /*<<< orphan*/  REG_IMR ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  FUNC3 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl2_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl2_adapter*) ; 
 struct atl2_adapter* FUNC7 (void*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct atl2_adapter *adapter = FUNC7(data);
	struct atl2_hw *hw = &adapter->hw;
	u32 status;

	status = FUNC0(hw, REG_ISR);
	if (0 == status)
		return IRQ_NONE;

	/* link event */
	if (status & ISR_PHY)
		FUNC4(adapter);

	/* clear ISR status, and Enable CMB DMA/Disable Interrupt */
	FUNC2(hw, REG_ISR, status | ISR_DIS_INT);

	/* check if PCIE PHY Link down */
	if (status & ISR_PHY_LINKDOWN) {
		if (FUNC8(adapter->netdev)) { /* reset MAC */
			FUNC2(hw, REG_ISR, 0);
			FUNC2(hw, REG_IMR, 0);
			FUNC1(hw);
			FUNC9(&adapter->reset_task);
			return IRQ_HANDLED;
		}
	}

	/* check if DMA read/write error? */
	if (status & (ISR_DMAR_TO_RST | ISR_DMAW_TO_RST)) {
		FUNC2(hw, REG_ISR, 0);
		FUNC2(hw, REG_IMR, 0);
		FUNC1(hw);
		FUNC9(&adapter->reset_task);
		return IRQ_HANDLED;
	}

	/* link event */
	if (status & (ISR_PHY | ISR_MANUAL)) {
		adapter->netdev->stats.tx_carrier_errors++;
		FUNC3(adapter);
	}

	/* transmit event */
	if (status & ISR_TX_EVENT)
		FUNC6(adapter);

	/* rx exception */
	if (status & ISR_RX_EVENT)
		FUNC5(adapter);

	/* re-enable Interrupt */
	FUNC2(&adapter->hw, REG_ISR, 0);
	return IRQ_HANDLED;
}