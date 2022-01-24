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
struct TYPE_2__ {scalar_t__ analog_shiftreg; } ;
struct ath_hw {TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct ath_hw *ah, u32 reg, u32 mask,
			       u32 shift, u32 val)
{
	FUNC0(ah, reg, ((val << shift) & mask), mask);

	if (ah->config.analog_shiftreg)
		FUNC1(100);
}