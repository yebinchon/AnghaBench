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

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int BITS_PER_LONG ; 
 int FUNC1 (unsigned long) ; 

int FUNC2(unsigned long *mask, int size)
{
	int i, idx = 0, cur;

	for (i = 0; i < size / BITS_PER_LONG; i++) {
		idx = FUNC1(~mask[i]);
		if (!idx)
			continue;

		idx--;
		cur = i * BITS_PER_LONG + idx;
		if (cur >= size)
			break;

		mask[i] |= FUNC0(idx);
		return cur;
	}

	return -1;
}