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
typedef  scalar_t__ u16 ;
struct bnx2x_udp_tunnel {scalar_t__ dst_port; scalar_t__ count; } ;
struct bnx2x {int /*<<< orphan*/  dev; struct bnx2x_udp_tunnel* udp_tunnel_ports; } ;
typedef  enum bnx2x_udp_port_type { ____Placeholder_bnx2x_udp_port_type } bnx2x_udp_port_type ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_CHANGE_UDP_PORT ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x *bp, u16 port,
				 enum bnx2x_udp_port_type type)
{
	struct bnx2x_udp_tunnel *udp_port = &bp->udp_tunnel_ports[type];

	if (!FUNC2(bp) || FUNC0(bp))
		return;

	if (!udp_port->count || udp_port->dst_port != port) {
		FUNC1(BNX2X_MSG_SP, "Invalid UDP tunnel [%d] port\n",
		   type);
		return;
	}

	/* Remove reference, and make certain it's no longer in use */
	udp_port->count--;
	if (udp_port->count)
		return;
	udp_port->dst_port = 0;

	if (FUNC4(bp->dev))
		FUNC3(bp, BNX2X_SP_RTNL_CHANGE_UDP_PORT, 0);
	else
		FUNC1(BNX2X_MSG_SP, "Deleted UDP tunnel [%d] port %d\n",
		   type, port);
}