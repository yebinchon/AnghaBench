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
struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mrouter; int /*<<< orphan*/  mc_disabled; int /*<<< orphan*/  vlan_filtering; int /*<<< orphan*/  ageing_time; int /*<<< orphan*/  brport_flags; int /*<<< orphan*/  stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; int /*<<< orphan*/  orig_dev; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int /*<<< orphan*/  mlxsw_sp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME 135 
#define  SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED 134 
#define  SWITCHDEV_ATTR_ID_BRIDGE_MROUTER 133 
#define  SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING 132 
#define  SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS 131 
#define  SWITCHDEV_ATTR_ID_PORT_MROUTER 130 
#define  SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS 129 
#define  SWITCHDEV_ATTR_ID_PORT_STP_STATE 128 
 int FUNC0 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlxsw_sp_port*,struct switchdev_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_port* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
				  const struct switchdev_attr *attr,
				  struct switchdev_trans *trans)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC9(dev);
	int err;

	switch (attr->id) {
	case SWITCHDEV_ATTR_ID_PORT_STP_STATE:
		err = FUNC6(mlxsw_sp_port, trans,
						       attr->orig_dev,
						       attr->u.stp_state);
		break;
	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
		err = FUNC3(mlxsw_sp_port,
							  trans,
							  attr->u.brport_flags);
		break;
	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
		err = FUNC1(mlxsw_sp_port, trans,
						      attr->orig_dev,
						      attr->u.brport_flags);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
		err = FUNC0(mlxsw_sp_port, trans,
						       attr->u.ageing_time);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
		err = FUNC4(mlxsw_sp_port, trans,
						     attr->orig_dev,
						     attr->u.vlan_filtering);
		break;
	case SWITCHDEV_ATTR_ID_PORT_MROUTER:
		err = FUNC5(mlxsw_sp_port, trans,
						     attr->orig_dev,
						     attr->u.mrouter);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED:
		err = FUNC7(mlxsw_sp_port, trans,
						    attr->orig_dev,
						    attr->u.mc_disabled);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_MROUTER:
		err = FUNC2(mlxsw_sp_port, trans,
							attr->orig_dev,
							attr->u.mrouter);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	if (FUNC10(trans))
		FUNC8(mlxsw_sp_port->mlxsw_sp);

	return err;
}