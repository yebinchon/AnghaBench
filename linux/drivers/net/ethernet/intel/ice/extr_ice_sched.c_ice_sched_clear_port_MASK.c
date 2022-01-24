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
struct ice_port_info {scalar_t__ port_state; int /*<<< orphan*/  sched_lock; } ;

/* Variables and functions */
 scalar_t__ ICE_SCHED_PORT_STATE_INIT ; 
 scalar_t__ ICE_SCHED_PORT_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ice_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ice_port_info *pi)
{
	if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
		return;

	pi->port_state = ICE_SCHED_PORT_STATE_INIT;
	FUNC2(&pi->sched_lock);
	FUNC0(pi);
	FUNC3(&pi->sched_lock);
	FUNC1(&pi->sched_lock);
}