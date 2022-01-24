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
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {int revision; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION ; 
 int E1000_FEXTNVM6_REQ_PLL_CLK ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_K1_CONFIG ; 
 int E1000_KMRNCTRLSTA_K1_ENABLE ; 
 int E1000_STATUS_FD ; 
 int E1000_STATUS_SPEED_100 ; 
 int E1000_STATUS_SPEED_1000 ; 
 int /*<<< orphan*/  FEXTNVM6 ; 
 int /*<<< orphan*/  I217_INBAND_CTRL ; 
 int I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_MASK ; 
 int I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT ; 
 int /*<<< orphan*/  STATUS ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static s32 FUNC9(struct e1000_hw *hw, bool link)
{
	u32 fextnvm6 = FUNC4(FEXTNVM6);
	u32 status = FUNC4(STATUS);
	s32 ret_val = 0;
	u16 reg;

	if (link && (status & E1000_STATUS_SPEED_1000)) {
		ret_val = hw->phy.ops.acquire(hw);
		if (ret_val)
			return ret_val;

		ret_val =
		    FUNC0(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
						&reg);
		if (ret_val)
			goto release;

		ret_val =
		    FUNC1(hw,
						 E1000_KMRNCTRLSTA_K1_CONFIG,
						 reg &
						 ~E1000_KMRNCTRLSTA_K1_ENABLE);
		if (ret_val)
			goto release;

		FUNC8(10, 20);

		FUNC5(FEXTNVM6, fextnvm6 | E1000_FEXTNVM6_REQ_PLL_CLK);

		ret_val =
		    FUNC1(hw,
						 E1000_KMRNCTRLSTA_K1_CONFIG,
						 reg);
release:
		hw->phy.ops.release(hw);
	} else {
		/* clear FEXTNVM6 bit 8 on link down or 10/100 */
		fextnvm6 &= ~E1000_FEXTNVM6_REQ_PLL_CLK;

		if ((hw->phy.revision > 5) || !link ||
		    ((status & E1000_STATUS_SPEED_100) &&
		     (status & E1000_STATUS_FD)))
			goto update_fextnvm6;

		ret_val = FUNC2(hw, I217_INBAND_CTRL, &reg);
		if (ret_val)
			return ret_val;

		/* Clear link status transmit timeout */
		reg &= ~I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_MASK;

		if (status & E1000_STATUS_SPEED_100) {
			/* Set inband Tx timeout to 5x10us for 100Half */
			reg |= 5 << I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT;

			/* Do not extend the K1 entry latency for 100Half */
			fextnvm6 &= ~E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION;
		} else {
			/* Set inband Tx timeout to 50x10us for 10Full/Half */
			reg |= 50 <<
			    I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT;

			/* Extend the K1 entry latency for 10 Mbps */
			fextnvm6 |= E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION;
		}

		ret_val = FUNC3(hw, I217_INBAND_CTRL, reg);
		if (ret_val)
			return ret_val;

update_fextnvm6:
		FUNC5(FEXTNVM6, fextnvm6);
	}

	return ret_val;
}