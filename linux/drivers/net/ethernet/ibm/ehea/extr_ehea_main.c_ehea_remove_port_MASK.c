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
typedef  int /*<<< orphan*/  u32 ;
struct ehea_port {int /*<<< orphan*/  netdev; } ;
struct ehea_adapter {struct ehea_port** port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int EHEA_MAX_PORTS ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ehea_adapter* FUNC0 (struct device*) ; 
 struct ehea_port* FUNC1 (struct ehea_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct ehea_adapter *adapter = FUNC0(dev);
	struct ehea_port *port;
	int i;
	u32 logical_port_id;

	FUNC6(buf, "%d", &logical_port_id);

	port = FUNC1(adapter, logical_port_id);

	if (port) {
		FUNC4(port->netdev, "removed: (logical port id=%d)\n",
			    logical_port_id);

		FUNC3(port);

		for (i = 0; i < EHEA_MAX_PORTS; i++)
			if (adapter->port[i] == port) {
				adapter->port[i] = NULL;
				break;
			}
	} else {
		FUNC5("removing port with logical port id=%d failed. port not configured.\n",
		       logical_port_id);
		return -EINVAL;
	}

	FUNC2(adapter);

	return (ssize_t) count;
}