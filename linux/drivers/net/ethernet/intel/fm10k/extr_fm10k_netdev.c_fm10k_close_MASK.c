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
struct fm10k_intfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 struct fm10k_intfc* FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *netdev)
{
	struct fm10k_intfc *interface = FUNC5(netdev);

	FUNC0(interface);

	FUNC4(interface);

	FUNC3(interface);

	FUNC2(interface);
	FUNC1(interface);

	return 0;
}