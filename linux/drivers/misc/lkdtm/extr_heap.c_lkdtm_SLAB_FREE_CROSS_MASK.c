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
 int /*<<< orphan*/  a_cache ; 
 int /*<<< orphan*/  b_cache ; 
 int* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(void)
{
	int *val;

	val = FUNC0(a_cache, GFP_KERNEL);
	if (!val) {
		FUNC2("Unable to allocate a_cache memory.\n");
		return;
	}

	/* Just make sure we got real memory. */
	*val = 0x12345679;
	FUNC2("Attempting cross-cache slab free ...\n");
	FUNC1(b_cache, val);
}