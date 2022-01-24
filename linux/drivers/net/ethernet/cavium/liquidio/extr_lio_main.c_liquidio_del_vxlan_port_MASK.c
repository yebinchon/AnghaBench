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
struct udp_tunnel_info {scalar_t__ type; int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCTNET_CMD_VXLAN_PORT_CONFIG ; 
 int /*<<< orphan*/  OCTNET_CMD_VXLAN_PORT_DEL ; 
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev,
				    struct udp_tunnel_info *ti)
{
	if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
		return;

	FUNC1(netdev,
				    OCTNET_CMD_VXLAN_PORT_CONFIG,
				    FUNC0(ti->port),
				    OCTNET_CMD_VXLAN_PORT_DEL);
}