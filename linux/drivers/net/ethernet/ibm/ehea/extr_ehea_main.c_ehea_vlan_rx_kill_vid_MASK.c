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
typedef  scalar_t__ u64 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct hcp_ehea_port_cb1 {scalar_t__* vlan_filter; } ;
struct ehea_port {int /*<<< orphan*/  logical_port_id; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_PORT_CB1 ; 
 int /*<<< orphan*/  H_PORT_CB1_ALL ; 
 scalar_t__ H_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb1*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb1*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, __be16 proto, u16 vid)
{
	struct ehea_port *port = FUNC4(dev);
	struct ehea_adapter *adapter = port->adapter;
	struct hcp_ehea_port_cb1 *cb1;
	int index;
	u64 hret;
	int err = 0;

	cb1 = (void *)FUNC3(GFP_KERNEL);
	if (!cb1) {
		FUNC5("no mem for cb1\n");
		err = -ENOMEM;
		goto out;
	}

	hret = FUNC1(adapter->handle, port->logical_port_id,
				      H_PORT_CB1, H_PORT_CB1_ALL, cb1);
	if (hret != H_SUCCESS) {
		FUNC5("query_ehea_port failed\n");
		err = -EINVAL;
		goto out;
	}

	index = (vid / 64);
	cb1->vlan_filter[index] &= ~((u64)(0x8000000000000000 >> (vid & 0x3F)));

	hret = FUNC0(adapter->handle, port->logical_port_id,
				       H_PORT_CB1, H_PORT_CB1_ALL, cb1);
	if (hret != H_SUCCESS) {
		FUNC5("modify_ehea_port failed\n");
		err = -EINVAL;
	}
out:
	FUNC2((unsigned long)cb1);
	return err;
}