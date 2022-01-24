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
 scalar_t__ do_nothing ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,unsigned char*) ; 

void FUNC4(void)
{
	size_t size;
	unsigned char *ptr;

	size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
	ptr = (unsigned char *)do_overwritten;

	FUNC3("attempting bad %zu byte write at %px\n", size, ptr);
	FUNC2(ptr, (unsigned char *)do_nothing, size);
	FUNC1((unsigned long)ptr, (unsigned long)(ptr + size));

	FUNC0();
}