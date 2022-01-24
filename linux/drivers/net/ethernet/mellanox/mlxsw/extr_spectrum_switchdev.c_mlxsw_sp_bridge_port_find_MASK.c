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
struct mlxsw_sp_bridge_port {int dummy; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;
struct mlxsw_sp_bridge {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_bridge_port* FUNC0 (struct mlxsw_sp_bridge_device*,struct net_device*) ; 
 struct mlxsw_sp_bridge_device* FUNC1 (struct mlxsw_sp_bridge*,struct net_device*) ; 
 struct net_device* FUNC2 (struct net_device*) ; 

struct mlxsw_sp_bridge_port *
FUNC3(struct mlxsw_sp_bridge *bridge,
			  struct net_device *brport_dev)
{
	struct net_device *br_dev = FUNC2(brport_dev);
	struct mlxsw_sp_bridge_device *bridge_device;

	if (!br_dev)
		return NULL;

	bridge_device = FUNC1(bridge, br_dev);
	if (!bridge_device)
		return NULL;

	return FUNC0(bridge_device, brport_dev);
}