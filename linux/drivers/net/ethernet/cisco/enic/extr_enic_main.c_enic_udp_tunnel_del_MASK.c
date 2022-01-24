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
struct udp_tunnel_info {scalar_t__ type; int /*<<< orphan*/  sa_family; int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ vxlan_udp_port_number; } ;
struct enic {int /*<<< orphan*/  devcmd_lock; TYPE_1__ vxlan; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVERLAY_FEATURE_VXLAN ; 
 int /*<<< orphan*/  OVERLAY_OFFLOAD_DISABLE ; 
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 struct enic* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev,
				struct udp_tunnel_info *ti)
{
	struct enic *enic = FUNC2(netdev);
	int err;

	FUNC4(&enic->devcmd_lock);

	if ((FUNC3(ti->port) != enic->vxlan.vxlan_udp_port_number) ||
	    ti->type != UDP_TUNNEL_TYPE_VXLAN) {
		FUNC1(netdev, "udp_tnl: port:%d, sa_family: %d, type: %d not offloaded",
			    FUNC3(ti->port), ti->sa_family, ti->type);
		goto unlock;
	}

	err = FUNC6(enic->vdev, OVERLAY_FEATURE_VXLAN,
					    OVERLAY_OFFLOAD_DISABLE);
	if (err) {
		FUNC0(netdev, "vxlan: del offload udp port: %d failed",
			   FUNC3(ti->port));
		goto unlock;
	}

	enic->vxlan.vxlan_udp_port_number = 0;

	FUNC1(netdev, "vxlan: del offload udp port %d, family %d\n",
		    FUNC3(ti->port), ti->sa_family);

unlock:
	FUNC5(&enic->devcmd_lock);
}