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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void)
{
	unsigned int i;
	atomic_t count = FUNC0(1);

	for (i = 0; i < INT_MAX - 1; i++)
		FUNC2(&count);

	for (i = INT_MAX; i > 0; i--)
		if (FUNC1(&count))
			break;

	if (i != 1)
		FUNC3("atomic timing: out of sync up/down cycle: %u\n", i - 1);
	else
		FUNC4("atomic timing: done\n");
}