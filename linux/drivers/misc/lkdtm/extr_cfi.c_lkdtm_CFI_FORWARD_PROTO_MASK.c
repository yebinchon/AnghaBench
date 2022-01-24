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
 int called_count ; 
 scalar_t__ lkdtm_increment_int ; 
 void FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	/*
	 * Matches lkdtm_increment_void()'s prototype, but not
	 * lkdtm_increment_int()'s prototype.
	 */
	void (*func)(int *);

	FUNC1("Calling matched prototype ...\n");
	func = lkdtm_increment_void;
	func(&called_count);

	FUNC1("Calling mismatched prototype ...\n");
	func = (void *)lkdtm_increment_int;
	func(&called_count);

	FUNC1("Fail: survived mismatched prototype function call!\n");
}