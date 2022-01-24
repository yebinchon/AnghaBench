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
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void FUNC6(void)
{
	unsigned long p = FUNC1(GFP_KERNEL);
	int saw, *val;
	int *base;

	if (!p) {
		FUNC5("Unable to allocate free page\n");
		return;
	}

	val = FUNC4(1024, GFP_KERNEL);
	if (!val) {
		FUNC5("Unable to allocate val memory.\n");
		FUNC2(p);
		return;
	}

	base = (int *)p;

	*val = 0x12345678;
	base[0] = *val;
	FUNC5("Value in memory before free: %x\n", base[0]);
	FUNC2(p);
	FUNC5("Attempting to read from freed memory\n");
	saw = base[0];
	if (saw != *val) {
		/* Good! Poisoning happened, so declare a win. */
		FUNC5("Memory correctly poisoned (%x)\n", saw);
		FUNC0();
	}
	FUNC5("Buddy page was not poisoned\n");

	FUNC3(val);
}