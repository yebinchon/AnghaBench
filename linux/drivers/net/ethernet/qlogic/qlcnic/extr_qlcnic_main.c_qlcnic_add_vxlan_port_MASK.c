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
struct qlcnic_hardware_context {int vxlan_port_count; scalar_t__ vxlan_port; } ;
struct qlcnic_adapter {int /*<<< orphan*/  flags; struct qlcnic_hardware_context* ahw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_ADD_VXLAN_PORT ; 
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ; 
 struct qlcnic_adapter* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
				  struct udp_tunnel_info *ti)
{
	struct qlcnic_adapter *adapter = FUNC0(netdev);
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
		return;

	/* Adapter supports only one VXLAN port. Use very first port
	 * for enabling offload
	 */
	if (!FUNC2(adapter))
		return;
	if (!ahw->vxlan_port_count) {
		ahw->vxlan_port_count = 1;
		ahw->vxlan_port = FUNC1(ti->port);
		adapter->flags |= QLCNIC_ADD_VXLAN_PORT;
		return;
	}
	if (ahw->vxlan_port == FUNC1(ti->port))
		ahw->vxlan_port_count++;

}