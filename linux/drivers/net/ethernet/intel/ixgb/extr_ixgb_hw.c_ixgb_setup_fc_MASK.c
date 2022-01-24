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
struct TYPE_2__ {int type; int pause_time; int low_water; int high_water; scalar_t__ send_xon; } ;
struct ixgb_hw {TYPE_1__ fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL0 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FCRTH ; 
 int /*<<< orphan*/  FCRTL ; 
 int IXGB_CTRL0_CMDC ; 
 int IXGB_CTRL0_RPE ; 
 int IXGB_CTRL0_TPE ; 
 int IXGB_FCRTL_XONE ; 
 int FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PAP ; 
#define  ixgb_fc_full 131 
#define  ixgb_fc_none 130 
#define  ixgb_fc_rx_pause 129 
#define  ixgb_fc_tx_pause 128 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(struct ixgb_hw *hw)
{
	u32 ctrl_reg;
	u32 pap_reg = 0;   /* by default, assume no pause time */
	bool status = true;

	FUNC1();

	/* Get the current control reg 0 settings */
	ctrl_reg = FUNC2(hw, CTRL0);

	/* Clear the Receive Pause Enable and Transmit Pause Enable bits */
	ctrl_reg &= ~(IXGB_CTRL0_RPE | IXGB_CTRL0_TPE);

	/* The possible values of the "flow_control" parameter are:
	 *      0:  Flow control is completely disabled
	 *      1:  Rx flow control is enabled (we can receive pause frames
	 *          but not send pause frames).
	 *      2:  Tx flow control is enabled (we can send pause frames
	 *          but we do not support receiving pause frames).
	 *      3:  Both Rx and TX flow control (symmetric) are enabled.
	 *  other:  Invalid.
	 */
	switch (hw->fc.type) {
	case ixgb_fc_none:	/* 0 */
		/* Set CMDC bit to disable Rx Flow control */
		ctrl_reg |= (IXGB_CTRL0_CMDC);
		break;
	case ixgb_fc_rx_pause:	/* 1 */
		/* RX Flow control is enabled, and TX Flow control is
		 * disabled.
		 */
		ctrl_reg |= (IXGB_CTRL0_RPE);
		break;
	case ixgb_fc_tx_pause:	/* 2 */
		/* TX Flow control is enabled, and RX Flow control is
		 * disabled, by a software over-ride.
		 */
		ctrl_reg |= (IXGB_CTRL0_TPE);
		pap_reg = hw->fc.pause_time;
		break;
	case ixgb_fc_full:	/* 3 */
		/* Flow control (both RX and TX) is enabled by a software
		 * over-ride.
		 */
		ctrl_reg |= (IXGB_CTRL0_RPE | IXGB_CTRL0_TPE);
		pap_reg = hw->fc.pause_time;
		break;
	default:
		/* We should never get here.  The value should be 0-3. */
		FUNC4("Flow control param set incorrectly\n");
		FUNC0(0);
		break;
	}

	/* Write the new settings */
	FUNC3(hw, CTRL0, ctrl_reg);

	if (pap_reg != 0)
		FUNC3(hw, PAP, pap_reg);

	/* Set the flow control receive threshold registers.  Normally,
	 * these registers will be set to a default threshold that may be
	 * adjusted later by the driver's runtime code.  However, if the
	 * ability to transmit pause frames in not enabled, then these
	 * registers will be set to 0.
	 */
	if (!(hw->fc.type & ixgb_fc_tx_pause)) {
		FUNC3(hw, FCRTL, 0);
		FUNC3(hw, FCRTH, 0);
	} else {
	   /* We need to set up the Receive Threshold high and low water
	    * marks as well as (optionally) enabling the transmission of XON
	    * frames. */
		if (hw->fc.send_xon) {
			FUNC3(hw, FCRTL,
				(hw->fc.low_water | IXGB_FCRTL_XONE));
		} else {
			FUNC3(hw, FCRTL, hw->fc.low_water);
		}
		FUNC3(hw, FCRTH, hw->fc.high_water);
	}
	return status;
}