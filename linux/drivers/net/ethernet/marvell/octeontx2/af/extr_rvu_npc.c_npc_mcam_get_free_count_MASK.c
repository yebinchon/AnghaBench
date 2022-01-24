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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static u16 FUNC2(unsigned long *map, u16 start, u16 end)
{
	u16 index, next;
	u16 fcnt = 0;

again:
	if (start >= end)
		return fcnt;

	index = FUNC1(map, end, start);
	if (index >= end)
		return fcnt;

	next = FUNC0(map, end, index);
	if (next <= end) {
		fcnt += next - index;
		start = next + 1;
		goto again;
	}

	fcnt += end - index;
	return fcnt;
}