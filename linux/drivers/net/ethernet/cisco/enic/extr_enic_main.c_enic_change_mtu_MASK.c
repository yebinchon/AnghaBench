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
struct net_device {scalar_t__ mtu; } ;
struct enic {scalar_t__ port_mtu; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct net_device*,int) ; 
 scalar_t__ FUNC1 (struct enic*) ; 
 scalar_t__ FUNC2 (struct enic*) ; 
 struct enic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int new_mtu)
{
	struct enic *enic = FUNC3(netdev);

	if (FUNC1(enic) || FUNC2(enic))
		return -EOPNOTSUPP;

	if (netdev->mtu > enic->port_mtu)
		FUNC4(netdev,
			    "interface MTU (%d) set higher than port MTU (%d)\n",
			    netdev->mtu, enic->port_mtu);

	return FUNC0(netdev, new_mtu);
}