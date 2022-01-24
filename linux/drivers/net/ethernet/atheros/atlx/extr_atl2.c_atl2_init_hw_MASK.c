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
struct atl2_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl2_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_RX_HASH_TABLE ; 
 int /*<<< orphan*/  FUNC2 (struct atl2_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl2_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl2_hw*) ; 

__attribute__((used)) static s32 FUNC5(struct atl2_hw *hw)
{
	u32 ret_val = 0;

	FUNC3(hw);

	/* Zero out the Multicast HASH table */
	/* clear the old settings from the multicast hash table */
	FUNC0(hw, REG_RX_HASH_TABLE, 0);
	FUNC1(hw, REG_RX_HASH_TABLE, 1, 0);

	FUNC2(hw);

	ret_val = FUNC4(hw);

	return ret_val;
}