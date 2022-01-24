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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ehea_crash_handler ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  ehea_mem_nb ; 
 int /*<<< orphan*/  ehea_memory_hooks_registered ; 
 int /*<<< orphan*/  ehea_reboot_nb ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void)
{
	int ret = 0;

	if (FUNC1(&ehea_memory_hooks_registered) > 1)
		return 0;

	ret = FUNC3();
	if (ret) {
		FUNC4("ehea_create_busmap failed\n");
		goto out;
	}

	ret = FUNC6(&ehea_reboot_nb);
	if (ret) {
		FUNC4("register_reboot_notifier failed\n");
		goto out;
	}

	ret = FUNC5(&ehea_mem_nb);
	if (ret) {
		FUNC4("register_memory_notifier failed\n");
		goto out2;
	}

	ret = FUNC2(ehea_crash_handler);
	if (ret) {
		FUNC4("crash_shutdown_register failed\n");
		goto out3;
	}

	return 0;

out3:
	FUNC7(&ehea_mem_nb);
out2:
	FUNC8(&ehea_reboot_nb);
out:
	FUNC0(&ehea_memory_hooks_registered);
	return ret;
}