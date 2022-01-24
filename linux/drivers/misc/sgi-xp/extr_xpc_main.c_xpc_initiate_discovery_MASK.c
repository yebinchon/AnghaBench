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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  xpc_discovery_exited ; 
 int /*<<< orphan*/  xpc_part ; 

__attribute__((used)) static int
FUNC3(void *ignore)
{
	FUNC2();

	FUNC1(xpc_part, "discovery thread is exiting\n");

	/* mark this thread as having exited */
	FUNC0(&xpc_discovery_exited);
	return 0;
}