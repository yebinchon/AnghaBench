#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; int /*<<< orphan*/  of_node; } ;
struct TYPE_7__ {struct device dev; } ;
struct ehea_port {TYPE_3__ ofdev; TYPE_2__* adapter; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ofdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_log_port_id ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ibmebus_bus_type ; 
 int /*<<< orphan*/  logical_port_release ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  port_name_cnt ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static struct device *FUNC6(struct ehea_port *port,
					 struct device_node *dn)
{
	int ret;

	port->ofdev.dev.of_node = FUNC4(dn);
	port->ofdev.dev.parent = &port->adapter->ofdev->dev;
	port->ofdev.dev.bus = &ibmebus_bus_type;

	FUNC0(&port->ofdev.dev, "port%d", port_name_cnt++);
	port->ofdev.dev.release = logical_port_release;

	ret = FUNC2(&port->ofdev);
	if (ret) {
		FUNC5("failed to register device. ret=%d\n", ret);
		goto out;
	}

	ret = FUNC1(&port->ofdev.dev, &dev_attr_log_port_id);
	if (ret) {
		FUNC5("failed to register attributes, ret=%d\n", ret);
		goto out_unreg_of_dev;
	}

	return &port->ofdev.dev;

out_unreg_of_dev:
	FUNC3(&port->ofdev);
out:
	return NULL;
}