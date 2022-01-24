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
struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_vlan {int dummy; } ;
struct switchdev_obj {int id; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  mlxsw_sp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_OBJ_ID_PORT_MDB 129 
#define  SWITCHDEV_OBJ_ID_PORT_VLAN 128 
 int /*<<< orphan*/  FUNC0 (struct switchdev_obj const*) ; 
 struct switchdev_obj_port_vlan* FUNC1 (struct switchdev_obj const*) ; 
 int FUNC2 (struct mlxsw_sp_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC3 (struct mlxsw_sp_port*,struct switchdev_obj_port_vlan const*,struct switchdev_trans*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_port* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				 const struct switchdev_obj *obj,
				 struct switchdev_trans *trans,
				 struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC5(dev);
	const struct switchdev_obj_port_vlan *vlan;
	int err = 0;

	switch (obj->id) {
	case SWITCHDEV_OBJ_ID_PORT_VLAN:
		vlan = FUNC1(obj);
		err = FUNC3(mlxsw_sp_port, vlan, trans,
					      extack);

		if (FUNC6(trans)) {
			/* The event is emitted before the changes are actually
			 * applied to the bridge. Therefore schedule the respin
			 * call for later, so that the respin logic sees the
			 * updated bridge state.
			 */
			FUNC4(mlxsw_sp_port->mlxsw_sp);
		}
		break;
	case SWITCHDEV_OBJ_ID_PORT_MDB:
		err = FUNC2(mlxsw_sp_port,
					    FUNC0(obj),
					    trans);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	return err;
}