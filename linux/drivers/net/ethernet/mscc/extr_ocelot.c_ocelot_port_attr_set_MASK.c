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
struct TYPE_2__ {int /*<<< orphan*/  mc_disabled; int /*<<< orphan*/  vlan_filtering; int /*<<< orphan*/  ageing_time; int /*<<< orphan*/  stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct ocelot_port {int /*<<< orphan*/  ocelot; int /*<<< orphan*/  vlan_aware; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME 131 
#define  SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED 130 
#define  SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING 129 
#define  SWITCHDEV_ATTR_ID_PORT_STP_STATE 128 
 struct ocelot_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocelot_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocelot_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot_port*,struct switchdev_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ocelot_port*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				const struct switchdev_attr *attr,
				struct switchdev_trans *trans)
{
	struct ocelot_port *ocelot_port = FUNC0(dev);
	int err = 0;

	switch (attr->id) {
	case SWITCHDEV_ATTR_ID_PORT_STP_STATE:
		FUNC3(ocelot_port, trans,
					       attr->u.stp_state);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
		FUNC1(ocelot_port, attr->u.ageing_time);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_VLAN_FILTERING:
		ocelot_port->vlan_aware = attr->u.vlan_filtering;
		FUNC4(ocelot_port->ocelot, ocelot_port);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_MC_DISABLED:
		FUNC2(ocelot_port, !attr->u.mc_disabled);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	return err;
}