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
typedef  scalar_t__ s64 ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static inline s64 FUNC1(s64 dividend, s32 divisor)
{
	if ((dividend > 0 && divisor > 0) || (dividend < 0 && divisor < 0))
		return FUNC0(dividend + divisor / 2, divisor);

	return FUNC0(dividend - divisor / 2, divisor);
}