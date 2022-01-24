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
struct net_device {int dummy; } ;
struct fm10k_intfc {scalar_t__ last_reset; int /*<<< orphan*/  pdev; int /*<<< orphan*/  state; struct net_device* netdev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __FM10K_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC12(struct fm10k_intfc *interface)
{
	struct net_device *netdev = interface->netdev;

	FUNC0(FUNC6());

	/* put off any impending NetWatchDogTimeout */
	FUNC8(netdev);

	/* Nothing to do if a reset is already in progress */
	if (FUNC11(__FM10K_RESETTING, interface->state))
		return false;

	/* As the MAC/VLAN task will be accessing registers it must not be
	 * running while we reset. Although the task will not be scheduled
	 * once we start resetting it may already be running
	 */
	FUNC5(interface);

	FUNC9();

	FUNC3(interface->pdev);

	if (FUNC7(netdev))
		FUNC2(netdev);

	FUNC4(interface);

	/* free interrupts */
	FUNC1(interface);

	/* delay any future reset requests */
	interface->last_reset = jiffies + (10 * HZ);

	FUNC10();

	return true;
}