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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct atl1e_hw {int dummy; } ;
struct atl1e_adapter {struct atl1e_hw hw; int /*<<< orphan*/  napi; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  netdev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int AT_MAX_INT_WORK ; 
 int FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int IMR_NORMAL_MASK ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int ISR_DIS_INT ; 
 int ISR_DMAR_TO_RST ; 
 int ISR_DMAW_TO_RST ; 
 int ISR_GPHY ; 
 int ISR_MANUAL ; 
 int ISR_PHY_LINKDOWN ; 
 int ISR_RX_EVENT ; 
 int ISR_SMB ; 
 int ISR_TX_EVENT ; 
 int /*<<< orphan*/  REG_IMR ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct atl1e_adapter*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 struct atl1e_adapter* FUNC12 (struct net_device*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct net_device *netdev  = data;
	struct atl1e_adapter *adapter = FUNC12(netdev);
	struct atl1e_hw *hw = &adapter->hw;
	int max_ints = AT_MAX_INT_WORK;
	int handled = IRQ_NONE;
	u32 status;

	do {
		status = FUNC0(hw, REG_ISR);
		if ((status & IMR_NORMAL_MASK) == 0 ||
				(status & ISR_DIS_INT) != 0) {
			if (max_ints != AT_MAX_INT_WORK)
				handled = IRQ_HANDLED;
			break;
		}
		/* link event */
		if (status & ISR_GPHY)
			FUNC5(adapter);
		/* Ack ISR */
		FUNC2(hw, REG_ISR, status | ISR_DIS_INT);

		handled = IRQ_HANDLED;
		/* check if PCIE PHY Link down */
		if (status & ISR_PHY_LINKDOWN) {
			FUNC11(adapter->netdev,
				   "pcie phy linkdown %x\n", status);
			if (FUNC13(adapter->netdev)) {
				/* reset MAC */
				FUNC6(adapter);
				FUNC14(&adapter->reset_task);
				break;
			}
		}

		/* check if DMA read/write error */
		if (status & (ISR_DMAR_TO_RST | ISR_DMAW_TO_RST)) {
			FUNC11(adapter->netdev,
				   "PCIE DMA RW error (status = 0x%x)\n",
				   status);
			FUNC6(adapter);
			FUNC14(&adapter->reset_task);
			break;
		}

		if (status & ISR_SMB)
			FUNC8(adapter);

		/* link event */
		if (status & (ISR_GPHY | ISR_MANUAL)) {
			netdev->stats.tx_carrier_errors++;
			FUNC7(adapter);
			break;
		}

		/* transmit event */
		if (status & ISR_TX_EVENT)
			FUNC4(adapter);

		if (status & ISR_RX_EVENT) {
			/*
			 * disable rx interrupts, without
			 * the synchronize_irq bit
			 */
			FUNC2(hw, REG_IMR,
				     IMR_NORMAL_MASK & ~ISR_RX_EVENT);
			FUNC1(hw);
			if (FUNC9(FUNC10(
				   &adapter->napi)))
				FUNC3(&adapter->napi);
		}
	} while (--max_ints > 0);
	/* re-enable Interrupt*/
	FUNC2(&adapter->hw, REG_ISR, 0);

	return handled;
}