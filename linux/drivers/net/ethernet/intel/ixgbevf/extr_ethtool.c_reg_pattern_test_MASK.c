#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  size_t u32 ;
struct TYPE_4__ {int /*<<< orphan*/  hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,size_t) ; 
 size_t FUNC4 (TYPE_1__*,int) ; 
 size_t* register_test_patterns ; 

__attribute__((used)) static bool FUNC5(struct ixgbevf_adapter *adapter, u64 *data,
			     int reg, u32 mask, u32 write)
{
	u32 pat, val, before;

	if (FUNC1(adapter->hw.hw_addr)) {
		*data = 1;
		return true;
	}
	for (pat = 0; pat < FUNC0(register_test_patterns); pat++) {
		before = FUNC4(&adapter->hw, reg);
		FUNC3(&adapter->hw, reg,
				register_test_patterns[pat] & write);
		val = FUNC4(&adapter->hw, reg);
		if (val != (register_test_patterns[pat] & write & mask)) {
			FUNC2(&adapter->hw,
			       "pattern test reg %04X failed: got 0x%08X expected 0x%08X\n",
			       reg, val,
			       register_test_patterns[pat] & write & mask);
			*data = reg;
			FUNC3(&adapter->hw, reg, before);
			return true;
		}
		FUNC3(&adapter->hw, reg, before);
	}
	return false;
}