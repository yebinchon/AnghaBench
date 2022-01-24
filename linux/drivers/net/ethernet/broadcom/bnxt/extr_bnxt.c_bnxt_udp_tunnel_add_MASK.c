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
struct udp_tunnel_info {scalar_t__ sa_family; int type; int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;
struct bnxt {int vxlan_port_cnt; int nge_port_cnt; int /*<<< orphan*/  sp_event; int /*<<< orphan*/  nge_port; int /*<<< orphan*/  vxlan_port; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  BNXT_GENEVE_ADD_PORT_SP_EVENT ; 
 int /*<<< orphan*/  BNXT_VXLAN_ADD_PORT_SP_EVENT ; 
#define  UDP_TUNNEL_TYPE_GENEVE 129 
#define  UDP_TUNNEL_TYPE_VXLAN 128 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
				struct udp_tunnel_info *ti)
{
	struct bnxt *bp = FUNC1(dev);

	if (ti->sa_family != AF_INET6 && ti->sa_family != AF_INET)
		return;

	if (!FUNC2(dev))
		return;

	switch (ti->type) {
	case UDP_TUNNEL_TYPE_VXLAN:
		if (bp->vxlan_port_cnt && bp->vxlan_port != ti->port)
			return;

		bp->vxlan_port_cnt++;
		if (bp->vxlan_port_cnt == 1) {
			bp->vxlan_port = ti->port;
			FUNC3(BNXT_VXLAN_ADD_PORT_SP_EVENT, &bp->sp_event);
			FUNC0(bp);
		}
		break;
	case UDP_TUNNEL_TYPE_GENEVE:
		if (bp->nge_port_cnt && bp->nge_port != ti->port)
			return;

		bp->nge_port_cnt++;
		if (bp->nge_port_cnt == 1) {
			bp->nge_port = ti->port;
			FUNC3(BNXT_GENEVE_ADD_PORT_SP_EVENT, &bp->sp_event);
		}
		break;
	default:
		return;
	}

	FUNC0(bp);
}