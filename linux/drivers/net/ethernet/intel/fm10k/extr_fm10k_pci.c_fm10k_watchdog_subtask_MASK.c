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
struct fm10k_intfc {int /*<<< orphan*/  next_stats_update; scalar_t__ host_ready; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __FM10K_DOWN ; 
 int /*<<< orphan*/  __FM10K_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct fm10k_intfc *interface)
{
	/* if interface is down do nothing */
	if (FUNC4(__FM10K_DOWN, interface->state) ||
	    FUNC4(__FM10K_RESETTING, interface->state))
		return;

	if (interface->host_ready)
		FUNC2(interface);
	else
		FUNC3(interface);

	/* update stats only once every second */
	if (FUNC5(interface->next_stats_update))
		FUNC0(interface);

	/* flush any uncompleted work */
	FUNC1(interface);
}