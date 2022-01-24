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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void FUNC4(void)
{
	int *base, *val, saw;
	size_t len = 1024;
	/*
	 * The slub allocator uses the first word to store the free
	 * pointer in some configurations. Use the middle of the
	 * allocation to avoid running into the freelist
	 */
	size_t offset = (len / sizeof(*base)) / 2;

	base = FUNC2(len, GFP_KERNEL);
	if (!base) {
		FUNC3("Unable to allocate base memory.\n");
		return;
	}

	val = FUNC2(len, GFP_KERNEL);
	if (!val) {
		FUNC3("Unable to allocate val memory.\n");
		FUNC1(base);
		return;
	}

	*val = 0x12345678;
	base[offset] = *val;
	FUNC3("Value in memory before free: %x\n", base[offset]);

	FUNC1(base);

	FUNC3("Attempting bad read from freed memory\n");
	saw = base[offset];
	if (saw != *val) {
		/* Good! Poisoning happened, so declare a win. */
		FUNC3("Memory correctly poisoned (%x)\n", saw);
		FUNC0();
	}
	FUNC3("Memory was not poisoned\n");

	FUNC1(val);
}