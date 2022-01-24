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
struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int EHEA_MAX_PORTS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 struct ehea_adapter* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct ehea_adapter*) ; 
 struct device_node* FUNC2 (struct ehea_adapter*,int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC3 (struct ehea_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_adapter*) ; 
 struct ehea_port* FUNC5 (struct ehea_adapter*,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
			       struct device_attribute *attr,
			       const char *buf, size_t count)
{
	struct ehea_adapter *adapter = FUNC0(dev);
	struct ehea_port *port;
	struct device_node *eth_dn = NULL;
	int i;

	u32 logical_port_id;

	FUNC10(buf, "%d", &logical_port_id);

	port = FUNC3(adapter, logical_port_id);

	if (port) {
		FUNC6(port->netdev, "adding port with logical port id=%d failed: port already configured\n",
			    logical_port_id);
		return -EINVAL;
	}

	eth_dn = FUNC2(adapter, logical_port_id);

	if (!eth_dn) {
		FUNC9("no logical port with id %d found\n", logical_port_id);
		return -EINVAL;
	}

	if (FUNC1(adapter)) {
		FUNC8("creating MR failed\n");
		FUNC7(eth_dn);
		return -EIO;
	}

	port = FUNC5(adapter, logical_port_id, eth_dn);

	FUNC7(eth_dn);

	if (port) {
		for (i = 0; i < EHEA_MAX_PORTS; i++)
			if (!adapter->port[i]) {
				adapter->port[i] = port;
				break;
			}

		FUNC6(port->netdev, "added: (logical port id=%d)\n",
			    logical_port_id);
	} else {
		FUNC4(adapter);
		return -EIO;
	}

	return (ssize_t) count;
}