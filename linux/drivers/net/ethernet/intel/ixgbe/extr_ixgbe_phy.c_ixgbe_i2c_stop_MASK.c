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
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int FUNC1 (struct ixgbe_hw*) ; 
 int FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_I2C_T_BUF ; 
 int /*<<< orphan*/  IXGBE_I2C_T_SU_STO ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ixgbe_hw *hw)
{
	u32 i2cctl = FUNC4(hw, FUNC0(hw));
	u32 data_oe_bit = FUNC3(hw);
	u32 clk_oe_bit = FUNC2(hw);
	u32 bb_en_bit = FUNC1(hw);

	/* Stop condition must begin with data low and clock high */
	FUNC8(hw, &i2cctl, 0);
	FUNC7(hw, &i2cctl);

	/* Setup time for stop condition (4us) */
	FUNC9(IXGBE_I2C_T_SU_STO);

	FUNC8(hw, &i2cctl, 1);

	/* bus free time between stop and start (4.7us)*/
	FUNC9(IXGBE_I2C_T_BUF);

	if (bb_en_bit || data_oe_bit || clk_oe_bit) {
		i2cctl &= ~bb_en_bit;
		i2cctl |= data_oe_bit | clk_oe_bit;
		FUNC6(hw, FUNC0(hw), i2cctl);
		FUNC5(hw);
	}
}