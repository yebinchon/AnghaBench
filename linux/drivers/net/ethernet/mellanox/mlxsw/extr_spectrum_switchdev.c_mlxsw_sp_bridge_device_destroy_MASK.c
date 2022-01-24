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
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  mids_list; int /*<<< orphan*/  ports_list; scalar_t__ vlan_enabled; int /*<<< orphan*/  list; int /*<<< orphan*/  dev; } ;
struct mlxsw_sp_bridge {int vlan_enabled_exists; int /*<<< orphan*/  mlxsw_sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_bridge_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp_bridge *bridge,
			       struct mlxsw_sp_bridge_device *bridge_device)
{
	FUNC4(bridge->mlxsw_sp,
					    bridge_device->dev);
	FUNC2(&bridge_device->list);
	if (bridge_device->vlan_enabled)
		bridge->vlan_enabled_exists = false;
	FUNC0(!FUNC3(&bridge_device->ports_list));
	FUNC0(!FUNC3(&bridge_device->mids_list));
	FUNC1(bridge_device);
}