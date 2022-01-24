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
struct ddb_port {scalar_t__ class; } ;
struct ddb {int port_num; int /*<<< orphan*/  dev; struct ddb_port* port; } ;

/* Variables and functions */
 scalar_t__ DDB_PORT_NONE ; 
 int ENODEV ; 
 int FUNC0 (struct ddb_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (struct ddb*) ; 

int FUNC4(struct ddb *dev)
{
	int i, numports, err_ports = 0, ret = 0;
	struct ddb_port *port;

	if (dev->port_num) {
		ret = FUNC3(dev);
		if (ret < 0) {
			FUNC1(dev->dev, "Registering adapters failed. Check DVB_MAX_ADAPTERS in config.\n");
			return ret;
		}
	}

	numports = dev->port_num;

	for (i = 0; i < dev->port_num; i++) {
		port = &dev->port[i];
		if (port->class != DDB_PORT_NONE) {
			ret = FUNC0(port);
			if (ret)
				err_ports++;
		} else {
			numports--;
		}
	}

	if (err_ports) {
		if (err_ports == numports) {
			FUNC1(dev->dev, "All connected ports failed to initialise!\n");
			return -ENODEV;
		}

		FUNC2(dev->dev, "%d of %d connected ports failed to initialise!\n",
			 err_ports, numports);
	}

	return 0;
}