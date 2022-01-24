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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atl1c_hw {int nic_type; struct atl1c_adapter* adapter; } ;
struct atl1c_adapter {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IDLE_STATUS_MASK ; 
 int MAC_CTRL_SPEED_MODE_SW ; 
 int MASTER_CTRL_OOB_DIS ; 
 int MASTER_CTRL_SOFT_RST ; 
 int /*<<< orphan*/  REG_MAC_CTRL ; 
 int /*<<< orphan*/  REG_MASTER_CTRL ; 
 int /*<<< orphan*/  REG_SERDES ; 
 int SERDES_MAC_CLK_SLOWDOWN ; 
 int SERDES_PHY_CLK_SLOWDOWN ; 
#define  athr_l1d_2 130 
#define  athr_l2c_b 129 
#define  athr_l2c_b2 128 
 int /*<<< orphan*/  FUNC3 (struct atl1c_hw*) ; 
 scalar_t__ FUNC4 (struct atl1c_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct atl1c_hw *hw)
{
	struct atl1c_adapter *adapter = hw->adapter;
	struct pci_dev *pdev = adapter->pdev;
	u32 ctrl_data = 0;

	FUNC3(hw);
	/*
	 * Issue Soft Reset to the MAC.  This will reset the chip's
	 * transmit, receive, DMA.  It will not effect
	 * the current PCI configuration.  The global reset bit is self-
	 * clearing, and should clear within a microsecond.
	 */
	FUNC0(hw, REG_MASTER_CTRL, &ctrl_data);
	ctrl_data |= MASTER_CTRL_OOB_DIS;
	FUNC2(hw, REG_MASTER_CTRL, ctrl_data | MASTER_CTRL_SOFT_RST);

	FUNC1(hw);
	FUNC6(10);
	/* Wait at least 10ms for All module to be Idle */

	if (FUNC4(hw, IDLE_STATUS_MASK)) {
		FUNC5(&pdev->dev,
			"MAC state machine can't be idle since"
			" disabled for 10ms second\n");
		return -1;
	}
	FUNC2(hw, REG_MASTER_CTRL, ctrl_data);

	/* driver control speed/duplex */
	FUNC0(hw, REG_MAC_CTRL, &ctrl_data);
	FUNC2(hw, REG_MAC_CTRL, ctrl_data | MAC_CTRL_SPEED_MODE_SW);

	/* clk switch setting */
	FUNC0(hw, REG_SERDES, &ctrl_data);
	switch (hw->nic_type) {
	case athr_l2c_b:
		ctrl_data &= ~(SERDES_PHY_CLK_SLOWDOWN |
				SERDES_MAC_CLK_SLOWDOWN);
		FUNC2(hw, REG_SERDES, ctrl_data);
		break;
	case athr_l2c_b2:
	case athr_l1d_2:
		ctrl_data |= SERDES_PHY_CLK_SLOWDOWN | SERDES_MAC_CLK_SLOWDOWN;
		FUNC2(hw, REG_SERDES, ctrl_data);
		break;
	default:
		break;
	}

	return 0;
}