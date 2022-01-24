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
 int /*<<< orphan*/  __FM10K_MACVLAN_DISABLE ; 
 int /*<<< orphan*/  __FM10K_MACVLAN_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fm10k_intfc *interface)
{
	/* Re-enable the MAC/VLAN work item */
	FUNC0(__FM10K_MACVLAN_DISABLE, interface->state);

	/* We might have received a MAC/VLAN request while disabled. If so,
	 * kick off the queue now.
	 */
	if (FUNC2(__FM10K_MACVLAN_REQUEST, interface->state))
		FUNC1(interface);
}