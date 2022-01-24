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
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	unsigned long p = FUNC0(GFP_KERNEL);
	if (!p) {
		FUNC3("Unable to allocate free page\n");
		return;
	}

	FUNC3("Writing to the buddy page before free\n");
	FUNC2((void *)p, 0x3, PAGE_SIZE);
	FUNC1(p);
	FUNC4();
	FUNC3("Attempting bad write to the buddy page after free\n");
	FUNC2((void *)p, 0x78, PAGE_SIZE);
	/* Attempt to notice the overwrite. */
	p = FUNC0(GFP_KERNEL);
	FUNC1(p);
	FUNC4();
}