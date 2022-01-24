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
typedef  int u64 ;
typedef  int u32 ;
struct e1000_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int const) ; 

__attribute__((used)) static bool FUNC4(struct e1000_adapter *adapter, u64 *data,
			     int reg, int offset, u32 mask, u32 write)
{
	u32 pat, val;
	static const u32 test[] = {
		0x5A5A5A5A, 0xA5A5A5A5, 0x00000000, 0xFFFFFFFF
	};
	for (pat = 0; pat < FUNC0(test); pat++) {
		FUNC2(&adapter->hw, reg, offset,
				      (test[pat] & write));
		val = FUNC1(&adapter->hw, reg, offset);
		if (val != (test[pat] & write & mask)) {
			FUNC3("pattern test failed (reg 0x%05X): got 0x%08X expected 0x%08X\n",
			      reg + (offset << 2), val,
			      (test[pat] & write & mask));
			*data = reg;
			return true;
		}
	}
	return false;
}