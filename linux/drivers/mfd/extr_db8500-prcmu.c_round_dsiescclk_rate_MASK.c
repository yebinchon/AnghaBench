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

/* Variables and functions */
 int /*<<< orphan*/  PRCMU_TVCLK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC3(unsigned long rate)
{
	u32 div;
	unsigned long src_rate;
	long rounded_rate;

	src_rate = FUNC1(PRCMU_TVCLK);
	div = FUNC0(src_rate, rate);
	rounded_rate = (src_rate / FUNC2(div, (u32)255));

	return rounded_rate;
}