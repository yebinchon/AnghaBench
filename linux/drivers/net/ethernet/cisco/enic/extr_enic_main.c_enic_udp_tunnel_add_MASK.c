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
struct udp_tunnel_info {int type; int sa_family; int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; int vxlan_udp_port_number; scalar_t__ patch_level; } ;
struct enic {int /*<<< orphan*/  devcmd_lock; TYPE_1__ vxlan; int /*<<< orphan*/  vdev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int ENIC_VXLAN_MULTI_WQ ; 
 int ENIC_VXLAN_OUTER_IPV6 ; 
 int /*<<< orphan*/  OVERLAY_CFG_VXLAN_PORT_UPDATE ; 
 int /*<<< orphan*/  OVERLAY_FEATURE_VXLAN ; 
 int /*<<< orphan*/  RES_TYPE_WQ ; 
 int UDP_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,...) ; 
 struct enic* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct net_device *netdev,
				struct udp_tunnel_info *ti)
{
	struct enic *enic = FUNC1(netdev);
	__be16 port = ti->port;
	int err;

	FUNC4(&enic->devcmd_lock);

	if (ti->type != UDP_TUNNEL_TYPE_VXLAN) {
		FUNC0(netdev, "udp_tnl: only vxlan tunnel offload supported");
		goto error;
	}

	switch (ti->sa_family) {
	case AF_INET6:
		if (!(enic->vxlan.flags & ENIC_VXLAN_OUTER_IPV6)) {
			FUNC0(netdev, "vxlan: only IPv4 offload supported");
			goto error;
		}
		/* Fall through */
	case AF_INET:
		break;
	default:
		goto error;
	}

	if (enic->vxlan.vxlan_udp_port_number) {
		if (FUNC3(port) == enic->vxlan.vxlan_udp_port_number)
			FUNC2(netdev, "vxlan: udp port already offloaded");
		else
			FUNC0(netdev, "vxlan: offload supported for only one UDP port");

		goto error;
	}
	if ((FUNC6(enic->vdev, RES_TYPE_WQ) != 1) &&
	    !(enic->vxlan.flags & ENIC_VXLAN_MULTI_WQ)) {
		FUNC0(netdev, "vxlan: vxlan offload with multi wq not supported on this adapter");
		goto error;
	}

	err = FUNC7(enic->vdev,
					   OVERLAY_CFG_VXLAN_PORT_UPDATE,
					   FUNC3(port));
	if (err)
		goto error;

	err = FUNC8(enic->vdev, OVERLAY_FEATURE_VXLAN,
					    enic->vxlan.patch_level);
	if (err)
		goto error;

	enic->vxlan.vxlan_udp_port_number = FUNC3(port);

	FUNC0(netdev, "vxlan fw-vers-%d: offload enabled for udp port: %d, sa_family: %d ",
		    (int)enic->vxlan.patch_level, FUNC3(port), ti->sa_family);

	goto unlock;

error:
	FUNC0(netdev, "failed to offload udp port: %d, sa_family: %d, type: %d",
		    FUNC3(port), ti->sa_family, ti->type);
unlock:
	FUNC5(&enic->devcmd_lock);
}