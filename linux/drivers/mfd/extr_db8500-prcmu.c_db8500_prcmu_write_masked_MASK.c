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

/* Variables and functions */
 scalar_t__ prcmu_base ; 
 int /*<<< orphan*/  prcmu_lock ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(unsigned int reg, u32 mask, u32 value)
{
	u32 val;
	unsigned long flags;

	FUNC1(&prcmu_lock, flags);
	val = FUNC0(prcmu_base + reg);
	val = ((val & ~mask) | (value & mask));
	FUNC3(val, (prcmu_base + reg));
	FUNC2(&prcmu_lock, flags);
}