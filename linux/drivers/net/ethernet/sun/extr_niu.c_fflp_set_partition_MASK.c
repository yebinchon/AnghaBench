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
typedef  scalar_t__ u64 ;
struct niu {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FCRAM_NUM_PARTITIONS ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FLW_PRT_SEL_BASE ; 
 scalar_t__ FLW_PRT_SEL_BASE_SHIFT ; 
 scalar_t__ FLW_PRT_SEL_EXT ; 
 scalar_t__ FLW_PRT_SEL_MASK ; 
 scalar_t__ FLW_PRT_SEL_MASK_SHIFT ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct niu *np, u64 partition,
			      u64 mask, u64 base, int enable)
{
	unsigned long reg;
	u64 val;

	if (partition >= FCRAM_NUM_PARTITIONS ||
	    (mask & ~(u64)0x1f) != 0 ||
	    (base & ~(u64)0x1f) != 0)
		return -EINVAL;

	reg = FUNC0(partition);

	val = FUNC1(reg);
	val &= ~(FLW_PRT_SEL_EXT | FLW_PRT_SEL_MASK | FLW_PRT_SEL_BASE);
	val |= (mask << FLW_PRT_SEL_MASK_SHIFT);
	val |= (base << FLW_PRT_SEL_BASE_SHIFT);
	if (enable)
		val |= FLW_PRT_SEL_EXT;
	FUNC2(reg, val);

	return 0;
}