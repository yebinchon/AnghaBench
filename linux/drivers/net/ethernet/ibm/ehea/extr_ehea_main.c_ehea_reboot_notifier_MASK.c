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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 unsigned long SYS_RESTART ; 
 int /*<<< orphan*/  ehea_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *nb,
				unsigned long action, void *unused)
{
	if (action == SYS_RESTART) {
		FUNC1("Reboot: freeing all eHEA resources\n");
		FUNC0(&ehea_driver);
	}
	return NOTIFY_DONE;
}