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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_EEC_CS ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ixgbe_hw *hw)
{
	u32 eec;

	eec = FUNC1(hw, FUNC0(hw));

	/* Toggle CS to flush commands */
	eec |= IXGBE_EEC_CS;
	FUNC3(hw, FUNC0(hw), eec);
	FUNC2(hw);
	FUNC4(1);
	eec &= ~IXGBE_EEC_CS;
	FUNC3(hw, FUNC0(hw), eec);
	FUNC2(hw);
	FUNC4(1);
}