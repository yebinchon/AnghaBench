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
 int /*<<< orphan*/  double_free_cache ; 
 int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(void)
{
	int *val;

	val = FUNC0(double_free_cache, GFP_KERNEL);
	if (!val) {
		FUNC2("Unable to allocate double_free_cache memory.\n");
		return;
	}

	/* Just make sure we got real memory. */
	*val = 0x12345678;
	FUNC2("Attempting double slab free ...\n");
	FUNC1(double_free_cache, val);
	FUNC1(double_free_cache, val);
}