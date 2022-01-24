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
struct fm10k_intfc {int /*<<< orphan*/  state; int /*<<< orphan*/  macvlan_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  __FM10K_MACVLAN_DISABLE ; 
 int /*<<< orphan*/  __FM10K_MACVLAN_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm10k_intfc *interface)
{
	/* Disable the MAC/VLAN work item */
	FUNC2(__FM10K_MACVLAN_DISABLE, interface->state);

	/* Make sure we waited until any current invocations have stopped */
	FUNC0(&interface->macvlan_task);

	/* We set the __FM10K_MACVLAN_SCHED bit when we schedule the task.
	 * However, it may not be unset of the MAC/VLAN task never actually
	 * got a chance to run. Since we've canceled the task here, and it
	 * cannot be rescheuled right now, we need to ensure the scheduled bit
	 * gets unset.
	 */
	FUNC1(__FM10K_MACVLAN_SCHED, interface->state);
}