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
struct mtd_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  reboot_notifier; scalar_t__ _reboot; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*) ; 
 int FUNC1 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mtd_info *master)
{
	int err;

	if (master->_reboot)
		FUNC3(&master->reboot_notifier);

	err = FUNC1(master);
	if (err)
		return err;

	if (!FUNC2(&master->dev))
		return 0;

	return FUNC0(master);
}