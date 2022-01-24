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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(void)
{
	int *base, *again;
	size_t len = 1024;
	/*
	 * The slub allocator uses the first word to store the free
	 * pointer in some configurations. Use the middle of the
	 * allocation to avoid running into the freelist
	 */
	size_t offset = (len / sizeof(*base)) / 2;

	base = FUNC1(len, GFP_KERNEL);
	if (!base)
		return;
	FUNC2("Allocated memory %p-%p\n", base, &base[offset * 2]);
	FUNC2("Attempting bad write to freed memory at %p\n",
		&base[offset]);
	FUNC0(base);
	base[offset] = 0x0abcdef0;
	/* Attempt to notice the overwrite. */
	again = FUNC1(len, GFP_KERNEL);
	FUNC0(again);
	if (again != base)
		FUNC2("Hmm, didn't get the same memory range.\n");
}