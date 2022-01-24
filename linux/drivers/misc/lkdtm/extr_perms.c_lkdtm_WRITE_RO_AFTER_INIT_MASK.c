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
 int /*<<< orphan*/  FUNC0 (char*,unsigned long*) ; 
 unsigned long ro_after_init ; 

void FUNC1(void)
{
	unsigned long *ptr = &ro_after_init;

	/*
	 * Verify we were written to during init. Since an Oops
	 * is considered a "success", a failure is to just skip the
	 * real test.
	 */
	if ((*ptr & 0xAA) != 0xAA) {
		FUNC0("%p was NOT written during init!?\n", ptr);
		return;
	}

	FUNC0("attempting bad ro_after_init write at %px\n", ptr);
	*ptr ^= 0xabcd1234;
}