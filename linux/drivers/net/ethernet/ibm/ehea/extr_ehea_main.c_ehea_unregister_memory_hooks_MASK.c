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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehea_crash_handler ; 
 int /*<<< orphan*/  ehea_mem_nb ; 
 int /*<<< orphan*/  ehea_memory_hooks_registered ; 
 int /*<<< orphan*/  ehea_reboot_nb ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* Only remove the hooks if we've registered them */
	if (FUNC0(&ehea_memory_hooks_registered) == 0)
		return;

	FUNC4(&ehea_reboot_nb);
	if (FUNC1(ehea_crash_handler))
		FUNC2("failed unregistering crash handler\n");
	FUNC3(&ehea_mem_nb);
}