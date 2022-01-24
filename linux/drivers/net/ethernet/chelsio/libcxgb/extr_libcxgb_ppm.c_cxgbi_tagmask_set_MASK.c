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
 unsigned int PPOD_IDX_MAX_SIZE ; 
 unsigned int PPOD_IDX_SHIFT ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,unsigned int,int) ; 

unsigned int FUNC2(unsigned int ppmax)
{
	unsigned int bits = FUNC0(ppmax);

	if (bits > PPOD_IDX_MAX_SIZE)
		bits = PPOD_IDX_MAX_SIZE;

	FUNC1("ippm: ppmax %u/0x%x -> bits %u, tagmask 0x%x.\n",
		ppmax, ppmax, bits, 1 << (bits + PPOD_IDX_SHIFT));

	return 1 << (bits + PPOD_IDX_SHIFT);
}