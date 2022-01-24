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
struct fm10k_intfc {int /*<<< orphan*/  state; int /*<<< orphan*/  service_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  __FM10K_SERVICE_DISABLE ; 
 int /*<<< orphan*/  __FM10K_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm10k_intfc *interface)
{
	FUNC2(__FM10K_SERVICE_DISABLE, interface->state);
	FUNC0(&interface->service_task);

	/* It's possible that cancel_work_sync stopped the service task from
	 * running before it could actually start. In this case the
	 * __FM10K_SERVICE_SCHED bit will never be cleared. Since we know that
	 * the service task cannot be running at this point, we need to clear
	 * the scheduled bit, as otherwise the service task may never be
	 * restarted.
	 */
	FUNC1(__FM10K_SERVICE_SCHED, interface->state);
}