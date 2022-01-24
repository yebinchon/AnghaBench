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
 int /*<<< orphan*/  __FM10K_RESET_SUSPENDED ; 
 scalar_t__ FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm10k_intfc *interface)
{
	/* the watchdog task reads from registers, which might appear like
	 * a surprise remove if the PCIe device is disabled while we're
	 * stopped. We stop the watchdog task until after we resume software
	 * activity.
	 *
	 * Note that the MAC/VLAN task will be stopped as part of preparing
	 * for reset so we don't need to handle it here.
	 */
	FUNC1(interface);

	if (FUNC0(interface))
		FUNC2(__FM10K_RESET_SUSPENDED, interface->state);
}