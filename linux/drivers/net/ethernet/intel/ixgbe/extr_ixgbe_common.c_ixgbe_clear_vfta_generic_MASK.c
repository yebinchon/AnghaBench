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
struct TYPE_2__ {int vft_size; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int IXGBE_VLVF_ENTRIES ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC4(struct ixgbe_hw *hw)
{
	u32 offset;

	for (offset = 0; offset < hw->mac.vft_size; offset++)
		FUNC3(hw, FUNC0(offset), 0);

	for (offset = 0; offset < IXGBE_VLVF_ENTRIES; offset++) {
		FUNC3(hw, FUNC1(offset), 0);
		FUNC3(hw, FUNC2(offset * 2), 0);
		FUNC3(hw, FUNC2(offset * 2 + 1), 0);
	}

	return 0;
}