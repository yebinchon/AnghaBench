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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int tx_fifo_head; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  CTRL_EXT ; 
 int E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES ; 
 int E1000_CTRL_FD ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 int E1000_CTRL_SPD_100 ; 
 int E1000_CTRL_SPD_1000 ; 
 int E1000_RCTL_LBM_MAC ; 
 int /*<<< orphan*/  KMRNCTRLSTA ; 
 int KMRNCTRLSTA_OPMODE ; 
 int KMRNCTRLSTA_OPMODE_1GB_FD_GMII ; 
 int /*<<< orphan*/  RCTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrlext = FUNC0(CTRL_EXT);
	u32 ctrl = FUNC0(CTRL);

	/* save CTRL_EXT to restore later, reuse an empty variable (unused
	 * on mac_type 80003es2lan)
	 */
	adapter->tx_fifo_head = ctrlext;

	/* clear the serdes mode bits, putting the device into mac loopback */
	ctrlext &= ~E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES;
	FUNC1(CTRL_EXT, ctrlext);

	/* force speed to 1000/FD, link up */
	ctrl &= ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
	ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX |
		 E1000_CTRL_SPD_1000 | E1000_CTRL_FD);
	FUNC1(CTRL, ctrl);

	/* set mac loopback */
	ctrl = FUNC0(RCTL);
	ctrl |= E1000_RCTL_LBM_MAC;
	FUNC1(RCTL, ctrl);

	/* set testing mode parameters (no need to reset later) */
#define KMRNCTRLSTA_OPMODE (0x1F << 16)
#define KMRNCTRLSTA_OPMODE_1GB_FD_GMII 0x0582
	FUNC1(KMRNCTRLSTA,
	     (KMRNCTRLSTA_OPMODE | KMRNCTRLSTA_OPMODE_1GB_FD_GMII));

	return 0;
}