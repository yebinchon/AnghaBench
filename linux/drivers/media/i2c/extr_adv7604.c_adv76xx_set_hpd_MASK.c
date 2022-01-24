#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct adv76xx_state {int /*<<< orphan*/  sd; int /*<<< orphan*/ * hpd_gpio; TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int num_dv_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV76XX_HOTPLUG ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct adv76xx_state *state, unsigned int hpd)
{
	unsigned int i;

	for (i = 0; i < state->info->num_dv_ports; ++i)
		FUNC1(state->hpd_gpio[i], hpd & FUNC0(i));

	FUNC2(&state->sd, ADV76XX_HOTPLUG, &hpd);
}