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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int FUNC1 (struct ixgbe_hw*) ; 
 int FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC10(struct ixgbe_hw *hw, bool *data)
{
	u32 i2cctl = FUNC3(hw, FUNC0(hw));
	u32 data_oe_bit = FUNC1(hw);

	if (data_oe_bit) {
		i2cctl |= FUNC2(hw);
		i2cctl |= data_oe_bit;
		FUNC5(hw, FUNC0(hw), i2cctl);
		FUNC4(hw);
	}
	FUNC8(hw, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC9(IXGBE_I2C_T_HIGH);

	i2cctl = FUNC3(hw, FUNC0(hw));
	*data = FUNC6(hw, &i2cctl);

	FUNC7(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC9(IXGBE_I2C_T_LOW);

	return 0;
}