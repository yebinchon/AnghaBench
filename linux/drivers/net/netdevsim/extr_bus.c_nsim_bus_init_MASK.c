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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsim_bus ; 
 int /*<<< orphan*/  nsim_driver ; 

int FUNC3(void)
{
	int err;

	err = FUNC0(&nsim_bus);
	if (err)
		return err;
	err = FUNC2(&nsim_driver);
	if (err)
		goto err_bus_unregister;
	return 0;

err_bus_unregister:
	FUNC1(&nsim_bus);
	return err;
}