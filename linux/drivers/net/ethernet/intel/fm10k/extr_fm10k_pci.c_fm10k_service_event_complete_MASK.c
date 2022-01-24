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
struct fm10k_intfc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __FM10K_SERVICE_REQUEST ; 
 int /*<<< orphan*/  __FM10K_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fm10k_intfc *interface)
{
	FUNC0(!FUNC4(__FM10K_SERVICE_SCHED, interface->state));

	/* flush memory to make sure state is correct before next watchog */
	FUNC3();
	FUNC1(__FM10K_SERVICE_SCHED, interface->state);

	/* If a service event was requested since we started, immediately
	 * re-schedule now. This ensures we don't drop a request until the
	 * next timer event.
	 */
	if (FUNC4(__FM10K_SERVICE_REQUEST, interface->state))
		FUNC2(interface);
}