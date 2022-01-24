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
struct e1000_mac_info {int autoneg_failed; int txcw; int serdes_has_link; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FD ; 
 int E1000_CTRL_SLU ; 
 int E1000_CTRL_SWDPIN1 ; 
 int E1000_RXCW_C ; 
 int E1000_STATUS_LU ; 
 int E1000_TXCW_ANE ; 
 int /*<<< orphan*/  RXCW ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TXCW ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

s32 FUNC4(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	u32 rxcw;
	u32 ctrl;
	u32 status;
	s32 ret_val;

	ctrl = FUNC2(CTRL);
	status = FUNC2(STATUS);
	rxcw = FUNC2(RXCW);

	/* If we don't have link (auto-negotiation failed or link partner
	 * cannot auto-negotiate), the cable is plugged in (we have signal),
	 * and our link partner is not trying to auto-negotiate with us (we
	 * are receiving idles or data), we need to force link up. We also
	 * need to give auto-negotiation time to complete, in case the cable
	 * was just plugged in. The autoneg_failed flag does this.
	 */
	/* (ctrl & E1000_CTRL_SWDPIN1) == 1 == have signal */
	if ((ctrl & E1000_CTRL_SWDPIN1) && !(status & E1000_STATUS_LU) &&
	    !(rxcw & E1000_RXCW_C)) {
		if (!mac->autoneg_failed) {
			mac->autoneg_failed = true;
			return 0;
		}
		FUNC1("NOT Rx'ing /C/, disable AutoNeg and force link.\n");

		/* Disable auto-negotiation in the TXCW register */
		FUNC3(TXCW, (mac->txcw & ~E1000_TXCW_ANE));

		/* Force link-up and also force full-duplex. */
		ctrl = FUNC2(CTRL);
		ctrl |= (E1000_CTRL_SLU | E1000_CTRL_FD);
		FUNC3(CTRL, ctrl);

		/* Configure Flow Control after forcing link up. */
		ret_val = FUNC0(hw);
		if (ret_val) {
			FUNC1("Error configuring flow control\n");
			return ret_val;
		}
	} else if ((ctrl & E1000_CTRL_SLU) && (rxcw & E1000_RXCW_C)) {
		/* If we are forcing link and we are receiving /C/ ordered
		 * sets, re-enable auto-negotiation in the TXCW register
		 * and disable forced link in the Device Control register
		 * in an attempt to auto-negotiate with our link partner.
		 */
		FUNC1("Rx'ing /C/, enable AutoNeg and stop forcing link.\n");
		FUNC3(TXCW, mac->txcw);
		FUNC3(CTRL, (ctrl & ~E1000_CTRL_SLU));

		mac->serdes_has_link = true;
	}

	return 0;
}