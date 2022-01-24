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
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;
struct ice_pf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ice_pf*) ; 
 int /*<<< orphan*/  ice_netdev_ops ; 
 int /*<<< orphan*/  ice_netdev_safe_mode_ops ; 
 struct ice_pf* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev)
{
	struct ice_pf *pf = FUNC1(netdev);

	if (FUNC0(pf)) {
		netdev->netdev_ops = &ice_netdev_safe_mode_ops;
		FUNC3(netdev);
		return;
	}

	netdev->netdev_ops = &ice_netdev_ops;
	FUNC2(netdev);
}