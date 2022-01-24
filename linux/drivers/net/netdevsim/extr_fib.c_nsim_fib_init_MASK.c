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
 int /*<<< orphan*/  nsim_fib_dump_inconsistent ; 
 int /*<<< orphan*/  nsim_fib_nb ; 
 int /*<<< orphan*/  nsim_fib_net_ops ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(void)
{
	int err;

	err = FUNC2(&nsim_fib_net_ops);
	if (err < 0) {
		FUNC0("Failed to register pernet subsystem\n");
		goto err_out;
	}

	err = FUNC1(&nsim_fib_nb, nsim_fib_dump_inconsistent);
	if (err < 0) {
		FUNC0("Failed to register fib notifier\n");
		FUNC3(&nsim_fib_net_ops);
		goto err_out;
	}

err_out:
	return err;
}