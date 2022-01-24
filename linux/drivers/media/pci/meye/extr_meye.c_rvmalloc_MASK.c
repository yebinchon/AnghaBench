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
 unsigned long FUNC0 (unsigned long) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

__attribute__((used)) static void *FUNC5(unsigned long size)
{
	void *mem;
	unsigned long adr;

	size = FUNC0(size);
	mem = FUNC3(size);
	if (mem) {
		FUNC2(mem, 0, size);
		adr = (unsigned long) mem;
		while (size > 0) {
			FUNC1(FUNC4((void *)adr));
			adr += PAGE_SIZE;
			size -= PAGE_SIZE;
		}
	}
	return mem;
}