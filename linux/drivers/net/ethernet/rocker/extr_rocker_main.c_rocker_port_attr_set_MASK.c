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
struct TYPE_2__ {int /*<<< orphan*/  ageing_time; int /*<<< orphan*/  brport_flags; int /*<<< orphan*/  stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct rocker_port {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME 131 
#define  SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS 130 
#define  SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS 129 
#define  SWITCHDEV_ATTR_ID_PORT_STP_STATE 128 
 struct rocker_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct rocker_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC2 (struct rocker_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC3 (struct rocker_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 
 int FUNC4 (struct rocker_port*,int /*<<< orphan*/ ,struct switchdev_trans*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				const struct switchdev_attr *attr,
				struct switchdev_trans *trans)
{
	struct rocker_port *rocker_port = FUNC0(dev);
	int err = 0;

	switch (attr->id) {
	case SWITCHDEV_ATTR_ID_PORT_STP_STATE:
		err = FUNC4(rocker_port,
							   attr->u.stp_state,
							   trans);
		break;
	case SWITCHDEV_ATTR_ID_PORT_PRE_BRIDGE_FLAGS:
		err = FUNC3(rocker_port,
							      attr->u.brport_flags,
							      trans);
		break;
	case SWITCHDEV_ATTR_ID_PORT_BRIDGE_FLAGS:
		err = FUNC2(rocker_port,
							      attr->u.brport_flags,
							      trans);
		break;
	case SWITCHDEV_ATTR_ID_BRIDGE_AGEING_TIME:
		err = FUNC1(rocker_port,
								    attr->u.ageing_time,
								    trans);
		break;
	default:
		err = -EOPNOTSUPP;
		break;
	}

	return err;
}