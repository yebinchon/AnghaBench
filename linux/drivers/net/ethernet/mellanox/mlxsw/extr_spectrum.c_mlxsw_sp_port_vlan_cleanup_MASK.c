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
struct mlxsw_sp_port_vlan {scalar_t__ fid; scalar_t__ bridge_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_port_vlan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_port_vlan*) ; 

__attribute__((used)) static void
FUNC2(struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan)
{
	if (mlxsw_sp_port_vlan->bridge_port)
		FUNC0(mlxsw_sp_port_vlan);
	else if (mlxsw_sp_port_vlan->fid)
		FUNC1(mlxsw_sp_port_vlan);
}