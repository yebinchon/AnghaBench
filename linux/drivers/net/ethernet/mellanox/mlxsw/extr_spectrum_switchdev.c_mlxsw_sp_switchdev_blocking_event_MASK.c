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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
#define  SWITCHDEV_PORT_ATTR_SET 130 
#define  SWITCHDEV_PORT_OBJ_ADD 129 
#define  SWITCHDEV_PORT_OBJ_DEL 128 
 int /*<<< orphan*/  mlxsw_sp_port_attr_set ; 
 int /*<<< orphan*/  mlxsw_sp_port_dev_check ; 
 int /*<<< orphan*/  mlxsw_sp_port_obj_add ; 
 int /*<<< orphan*/  mlxsw_sp_port_obj_del ; 
 int FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *unused,
					     unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC7(ptr);
	int err = 0;

	switch (event) {
	case SWITCHDEV_PORT_OBJ_ADD:
		if (FUNC2(dev))
			err = FUNC0(dev, ptr);
		else
			err = FUNC5(dev, ptr,
							mlxsw_sp_port_dev_check,
							mlxsw_sp_port_obj_add);
		return FUNC3(err);
	case SWITCHDEV_PORT_OBJ_DEL:
		if (FUNC2(dev))
			FUNC1(dev, ptr);
		else
			err = FUNC6(dev, ptr,
							mlxsw_sp_port_dev_check,
							mlxsw_sp_port_obj_del);
		return FUNC3(err);
	case SWITCHDEV_PORT_ATTR_SET:
		err = FUNC4(dev, ptr,
						     mlxsw_sp_port_dev_check,
						     mlxsw_sp_port_attr_set);
		return FUNC3(err);
	}

	return NOTIFY_DONE;
}