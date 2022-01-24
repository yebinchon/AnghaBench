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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct atl1c_hw {int intr_mask; } ;
struct atl1c_adapter {struct atl1c_hw hw; int /*<<< orphan*/  common_task; int /*<<< orphan*/  work_event; int /*<<< orphan*/  napi; struct pci_dev* pdev; } ;
typedef  int irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATL1C_WORK_EVENT_RESET ; 
 int AT_MAX_INT_WORK ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int ISR_DIS_INT ; 
 int ISR_ERROR ; 
 int ISR_GPHY ; 
 int ISR_MANUAL ; 
 int ISR_OVER ; 
 int ISR_RX_PKT ; 
 int ISR_TX_PKT ; 
 int /*<<< orphan*/  REG_IMR ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  atl1c_trans_normal ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct atl1c_adapter* FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC12 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct net_device *netdev  = data;
	struct atl1c_adapter *adapter = FUNC10(netdev);
	struct pci_dev *pdev = adapter->pdev;
	struct atl1c_hw *hw = &adapter->hw;
	int max_ints = AT_MAX_INT_WORK;
	int handled = IRQ_NONE;
	u32 status;
	u32 reg_data;

	do {
		FUNC0(hw, REG_ISR, &reg_data);
		status = reg_data & hw->intr_mask;

		if (status == 0 || (status & ISR_DIS_INT) != 0) {
			if (max_ints != AT_MAX_INT_WORK)
				handled = IRQ_HANDLED;
			break;
		}
		/* link event */
		if (status & ISR_GPHY)
			FUNC4(adapter);
		/* Ack ISR */
		FUNC1(hw, REG_ISR, status | ISR_DIS_INT);
		if (status & ISR_RX_PKT) {
			if (FUNC8(FUNC9(&adapter->napi))) {
				hw->intr_mask &= ~ISR_RX_PKT;
				FUNC1(hw, REG_IMR, hw->intr_mask);
				FUNC2(&adapter->napi);
			}
		}
		if (status & ISR_TX_PKT)
			FUNC3(adapter, atl1c_trans_normal);

		handled = IRQ_HANDLED;
		/* check if PCIE PHY Link down */
		if (status & ISR_ERROR) {
			if (FUNC11(adapter))
				FUNC6(&pdev->dev,
					"atl1c hardware error (status = 0x%x)\n",
					status & ISR_ERROR);
			/* reset MAC */
			FUNC14(ATL1C_WORK_EVENT_RESET, &adapter->work_event);
			FUNC13(&adapter->common_task);
			return IRQ_HANDLED;
		}

		if (status & ISR_OVER)
			if (FUNC12(adapter))
				FUNC7(&pdev->dev,
					"TX/RX overflow (status = 0x%x)\n",
					status & ISR_OVER);

		/* link event */
		if (status & (ISR_GPHY | ISR_MANUAL)) {
			netdev->stats.tx_carrier_errors++;
			FUNC5(adapter);
			break;
		}

	} while (--max_ints > 0);
	/* re-enable Interrupt*/
	FUNC1(&adapter->hw, REG_ISR, 0);
	return handled;
}