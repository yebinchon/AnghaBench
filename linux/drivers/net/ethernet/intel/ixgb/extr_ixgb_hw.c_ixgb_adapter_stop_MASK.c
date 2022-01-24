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
struct ixgb_hw {int adapter_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  IMC ; 
 int IXGB_CTRL0_RST ; 
 int /*<<< orphan*/  IXGB_DELAY_BEFORE_RESET ; 
 int IXGB_RCTL_RXEN ; 
 int FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int IXGB_TCTL_TXEN ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  TCTL ; 
 int FUNC4 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

bool
FUNC7(struct ixgb_hw *hw)
{
	u32 ctrl_reg;
	u32 icr_reg;

	FUNC0();

	/* If we are stopped or resetting exit gracefully and wait to be
	 * started again before accessing the hardware.
	 */
	if (hw->adapter_stopped) {
		FUNC6("Exiting because the adapter is already stopped!!!\n");
		return false;
	}

	/* Set the Adapter Stopped flag so other driver functions stop
	 * touching the Hardware.
	 */
	hw->adapter_stopped = true;

	/* Clear interrupt mask to stop board from generating interrupts */
	FUNC6("Masking off all interrupts\n");
	FUNC3(hw, IMC, 0xFFFFFFFF);

	/* Disable the Transmit and Receive units.  Then delay to allow
	 * any pending transactions to complete before we hit the MAC with
	 * the global reset.
	 */
	FUNC3(hw, RCTL, FUNC1(hw, RCTL) & ~IXGB_RCTL_RXEN);
	FUNC3(hw, TCTL, FUNC1(hw, TCTL) & ~IXGB_TCTL_TXEN);
	FUNC2(hw);
	FUNC5(IXGB_DELAY_BEFORE_RESET);

	/* Issue a global reset to the MAC.  This will reset the chip's
	 * transmit, receive, DMA, and link units.  It will not effect
	 * the current PCI configuration.  The global reset bit is self-
	 * clearing, and should clear within a microsecond.
	 */
	FUNC6("Issuing a global reset to MAC\n");

	ctrl_reg = FUNC4(hw);

	/* Clear interrupt mask to stop board from generating interrupts */
	FUNC6("Masking off all interrupts\n");
	FUNC3(hw, IMC, 0xffffffff);

	/* Clear any pending interrupt events. */
	icr_reg = FUNC1(hw, ICR);

	return ctrl_reg & IXGB_CTRL0_RST;
}