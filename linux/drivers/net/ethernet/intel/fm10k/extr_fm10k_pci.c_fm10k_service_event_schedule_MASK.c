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
 int /*<<< orphan*/  __FM10K_SERVICE_REQUEST ; 
 int /*<<< orphan*/  __FM10K_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fm10k_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct fm10k_intfc *interface)
{
	if (!FUNC4(__FM10K_SERVICE_DISABLE, interface->state) &&
	    !FUNC3(__FM10K_SERVICE_SCHED, interface->state)) {
		FUNC0(__FM10K_SERVICE_REQUEST, interface->state);
		FUNC1(fm10k_workqueue, &interface->service_task);
	} else {
		FUNC2(__FM10K_SERVICE_REQUEST, interface->state);
	}
}