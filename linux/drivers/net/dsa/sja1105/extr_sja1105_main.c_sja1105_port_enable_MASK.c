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
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  features; } ;
struct dsa_switch {TYPE_1__* ports; } ;
struct TYPE_2__ {struct net_device* slave; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int) ; 

__attribute__((used)) static int FUNC1(struct dsa_switch *ds, int port,
			       struct phy_device *phy)
{
	struct net_device *slave;

	if (!FUNC0(ds, port))
		return 0;

	slave = ds->ports[port].slave;

	slave->features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;

	return 0;
}