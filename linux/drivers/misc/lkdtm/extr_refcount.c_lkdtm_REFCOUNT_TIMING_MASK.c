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
typedef  int /*<<< orphan*/  refcount_t ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	unsigned int i;
	refcount_t count = FUNC0(1);

	for (i = 0; i < INT_MAX - 1; i++)
		FUNC4(&count);

	for (i = INT_MAX; i > 0; i--)
		if (FUNC3(&count))
			break;

	if (i != 1)
		FUNC1("refcount: out of sync up/down cycle: %u\n", i - 1);
	else
		FUNC2("refcount timing: done\n");
}