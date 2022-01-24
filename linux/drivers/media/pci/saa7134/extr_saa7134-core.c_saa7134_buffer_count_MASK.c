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
 int FUNC0 (unsigned int) ; 

int FUNC1(unsigned int size, unsigned int count)
{
	unsigned int maxcount;

	maxcount = 1024 / FUNC0(size);
	if (count > maxcount)
		count = maxcount;
	return count;
}