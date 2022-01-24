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
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_hw *hw)
{
	u32 i2cctl;
	u32 i;

	FUNC2(hw);
	i2cctl = FUNC1(hw, FUNC0(hw));

	FUNC6(hw, &i2cctl, 1);

	for (i = 0; i < 9; i++) {
		FUNC5(hw, &i2cctl);

		/* Min high period of clock is 4us */
		FUNC7(IXGBE_I2C_T_HIGH);

		FUNC4(hw, &i2cctl);

		/* Min low period of clock is 4.7us*/
		FUNC7(IXGBE_I2C_T_LOW);
	}

	FUNC2(hw);

	/* Put the i2c bus back to default state */
	FUNC3(hw);
}