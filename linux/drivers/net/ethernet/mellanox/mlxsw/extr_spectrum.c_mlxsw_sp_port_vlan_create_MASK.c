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
struct mlxsw_sp_port_vlan {int /*<<< orphan*/  list; scalar_t__ vid; struct mlxsw_sp_port* mlxsw_sp_port; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  vlans_list; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 struct mlxsw_sp_port_vlan* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLXSW_SP_DEFAULT_VID ; 
 struct mlxsw_sp_port_vlan* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlxsw_sp_port_vlan* FUNC3 (struct mlxsw_sp_port*,scalar_t__) ; 
 int FUNC4 (struct mlxsw_sp_port*,scalar_t__,scalar_t__,int,int) ; 

struct mlxsw_sp_port_vlan *
FUNC5(struct mlxsw_sp_port *mlxsw_sp_port, u16 vid)
{
	struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
	bool untagged = vid == MLXSW_SP_DEFAULT_VID;
	int err;

	mlxsw_sp_port_vlan = FUNC3(mlxsw_sp_port, vid);
	if (mlxsw_sp_port_vlan)
		return FUNC0(-EEXIST);

	err = FUNC4(mlxsw_sp_port, vid, vid, true, untagged);
	if (err)
		return FUNC0(err);

	mlxsw_sp_port_vlan = FUNC1(sizeof(*mlxsw_sp_port_vlan), GFP_KERNEL);
	if (!mlxsw_sp_port_vlan) {
		err = -ENOMEM;
		goto err_port_vlan_alloc;
	}

	mlxsw_sp_port_vlan->mlxsw_sp_port = mlxsw_sp_port;
	mlxsw_sp_port_vlan->vid = vid;
	FUNC2(&mlxsw_sp_port_vlan->list, &mlxsw_sp_port->vlans_list);

	return mlxsw_sp_port_vlan;

err_port_vlan_alloc:
	FUNC4(mlxsw_sp_port, vid, vid, false, false);
	return FUNC0(err);
}