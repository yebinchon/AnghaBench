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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ (* init_hw ) (struct igc_hw*) ;int /*<<< orphan*/  (* reset_hw ) (struct igc_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct igc_fc_info {int high_water; int low_water; int pause_time; int send_xon; int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; } ;
struct igc_hw {TYPE_2__ mac; struct igc_fc_info fc; } ;
struct igc_adapter {int max_frame_size; int /*<<< orphan*/  netdev; struct igc_hw hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int IGC_PBA_34K ; 
 int MAX_JUMBO_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct igc_hw*) ; 
 scalar_t__ FUNC5 (struct igc_hw*) ; 

void FUNC6(struct igc_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	struct igc_hw *hw = &adapter->hw;
	struct igc_fc_info *fc = &hw->fc;
	u32 pba, hwm;

	/* Repartition PBA for greater than 9k MTU if required */
	pba = IGC_PBA_34K;

	/* flow control settings
	 * The high water mark must be low enough to fit one full frame
	 * after transmitting the pause frame.  As such we must have enough
	 * space to allow for us to complete our current transmit and then
	 * receive the frame that is in progress from the link partner.
	 * Set it to:
	 * - the full Rx FIFO size minus one full Tx plus one full Rx frame
	 */
	hwm = (pba << 10) - (adapter->max_frame_size + MAX_JUMBO_FRAME_SIZE);

	fc->high_water = hwm & 0xFFFFFFF0;	/* 16-byte granularity */
	fc->low_water = fc->high_water - 16;
	fc->pause_time = 0xFFFF;
	fc->send_xon = 1;
	fc->current_mode = fc->requested_mode;

	hw->mac.ops.reset_hw(hw);

	if (hw->mac.ops.init_hw(hw))
		FUNC0(&pdev->dev, "Hardware Error\n");

	if (!FUNC3(adapter->netdev))
		FUNC2(adapter);

	FUNC1(hw);
}