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
typedef  scalar_t__ u64 ;
struct sockaddr {int /*<<< orphan*/ * sa_data; } ;
struct net_device {int* dev_addr; int /*<<< orphan*/  addr_len; } ;
struct hcp_ehea_port_cb0 {int port_mac_addr; } ;
struct ehea_port {scalar_t__ state; int mac_addr; int /*<<< orphan*/  logical_port_id; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ EHEA_PORT_UP ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_DEREG_BCMC ; 
 int /*<<< orphan*/  H_PORT_CB0 ; 
 int /*<<< orphan*/  H_PORT_CB0_MAC ; 
 int /*<<< orphan*/  H_REG_BCMC ; 
 scalar_t__ H_SUCCESS ; 
 int FUNC1 (struct ehea_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb0*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, void *sa)
{
	struct ehea_port *port = FUNC8(dev);
	struct sockaddr *mac_addr = sa;
	struct hcp_ehea_port_cb0 *cb0;
	int ret;
	u64 hret;

	if (!FUNC6(mac_addr->sa_data)) {
		ret = -EADDRNOTAVAIL;
		goto out;
	}

	cb0 = (void *)FUNC5(GFP_KERNEL);
	if (!cb0) {
		FUNC9("no mem for cb0\n");
		ret = -ENOMEM;
		goto out;
	}

	FUNC7(&(cb0->port_mac_addr), &(mac_addr->sa_data[0]), ETH_ALEN);

	cb0->port_mac_addr = cb0->port_mac_addr >> 16;

	hret = FUNC2(port->adapter->handle,
				       port->logical_port_id, H_PORT_CB0,
				       FUNC0(H_PORT_CB0_MAC, 1), cb0);
	if (hret != H_SUCCESS) {
		ret = -EIO;
		goto out_free;
	}

	FUNC7(dev->dev_addr, mac_addr->sa_data, dev->addr_len);

	/* Deregister old MAC in pHYP */
	if (port->state == EHEA_PORT_UP) {
		ret = FUNC1(port, H_DEREG_BCMC);
		if (ret)
			goto out_upregs;
	}

	port->mac_addr = cb0->port_mac_addr << 16;

	/* Register new MAC in pHYP */
	if (port->state == EHEA_PORT_UP) {
		ret = FUNC1(port, H_REG_BCMC);
		if (ret)
			goto out_upregs;
	}

	ret = 0;

out_upregs:
	FUNC3();
out_free:
	FUNC4((unsigned long)cb0);
out:
	return ret;
}