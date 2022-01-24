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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_MDIO ; 
 int E1000_CTRL_MDIO_DIR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u16 FUNC5(struct e1000_hw *hw)
{
	u32 ctrl;
	u16 data = 0;
	u8 i;

	/* In order to read a register from the PHY, we need to shift in a total
	 * of 18 bits from the PHY. The first two bit (turnaround) times are
	 * used to avoid contention on the MDIO pin when a read operation is
	 * performed. These two bits are ignored by us and thrown away. Bits are
	 * "shifted in" by raising the input to the Management Data Clock
	 * (setting the MDC bit), and then reading the value of the MDIO bit.
	 */
	ctrl = FUNC3(CTRL);

	/* Clear MDIO_DIR (SWDPIO1) to indicate this bit is to be used as
	 * input.
	 */
	ctrl &= ~E1000_CTRL_MDIO_DIR;
	ctrl &= ~E1000_CTRL_MDIO;

	FUNC4(CTRL, ctrl);
	FUNC0();

	/* Raise and Lower the clock before reading in the data. This accounts
	 * for the turnaround bits. The first clock occurred when we clocked out
	 * the last bit of the Register Address.
	 */
	FUNC2(hw, &ctrl);
	FUNC1(hw, &ctrl);

	for (data = 0, i = 0; i < 16; i++) {
		data = data << 1;
		FUNC2(hw, &ctrl);
		ctrl = FUNC3(CTRL);
		/* Check to see if we shifted in a "1". */
		if (ctrl & E1000_CTRL_MDIO)
			data |= 1;
		FUNC1(hw, &ctrl);
	}

	FUNC2(hw, &ctrl);
	FUNC1(hw, &ctrl);

	return data;
}