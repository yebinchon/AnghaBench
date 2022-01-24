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
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw)
{
	u32 reg = 0;
	u8  i   = 0;
	u8  j   = 0;

	/* Receive Queues stats setting -  8 queues per statistics reg */
	for (i = 0, j = 0; i < 15 && j < 8; i = i + 2, j++) {
		reg = FUNC0(hw, FUNC1(i));
		reg |= ((0x1010101) * j);
		FUNC3(hw, FUNC1(i), reg);
		reg = FUNC0(hw, FUNC1(i + 1));
		reg |= ((0x1010101) * j);
		FUNC3(hw, FUNC1(i + 1), reg);
	}
	/* Transmit Queues stats setting -  4 queues per statistics reg */
	for (i = 0; i < 8; i++) {
		reg = FUNC0(hw, FUNC2(i));
		reg |= ((0x1010101) * i);
		FUNC3(hw, FUNC2(i), reg);
	}

	return 0;
}