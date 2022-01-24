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
typedef  scalar_t__ u32 ;
struct hcp_ehea_port_cb4 {int port_speed; } ;
struct ehea_port {int autoneg; int full_duplex; scalar_t__ phy_link; int /*<<< orphan*/  netdev; void* port_speed; int /*<<< orphan*/  logical_port_id; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ EHEA_PHY_LINK_UP ; 
 void* EHEA_SPEED_100M ; 
 void* EHEA_SPEED_10G ; 
 void* EHEA_SPEED_10M ; 
 void* EHEA_SPEED_1G ; 
 scalar_t__ EHEA_SPEED_AUTONEG ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ H_AUTHORITY ; 
 int /*<<< orphan*/  H_PORT_CB4 ; 
 int /*<<< orphan*/  H_PORT_CB4_SPEED ; 
#define  H_SPEED_100M_F 133 
#define  H_SPEED_100M_H 132 
#define  H_SPEED_10G_F 131 
#define  H_SPEED_10M_F 130 
#define  H_SPEED_10M_H 129 
#define  H_SPEED_1G_F 128 
 scalar_t__ H_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb4*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_ehea_port_cb4*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  prop_carrier_state ; 

int FUNC8(struct ehea_port *port, u32 port_speed)
{
	struct hcp_ehea_port_cb4 *cb4;
	u64 hret;
	int ret = 0;

	cb4 = (void *)FUNC3(GFP_KERNEL);
	if (!cb4) {
		FUNC6("no mem for cb4\n");
		ret = -ENOMEM;
		goto out;
	}

	cb4->port_speed = port_speed;

	FUNC4(port->netdev);

	hret = FUNC0(port->adapter->handle,
				       port->logical_port_id,
				       H_PORT_CB4, H_PORT_CB4_SPEED, cb4);
	if (hret == H_SUCCESS) {
		port->autoneg = port_speed == EHEA_SPEED_AUTONEG ? 1 : 0;

		hret = FUNC1(port->adapter->handle,
					      port->logical_port_id,
					      H_PORT_CB4, H_PORT_CB4_SPEED,
					      cb4);
		if (hret == H_SUCCESS) {
			switch (cb4->port_speed) {
			case H_SPEED_10M_H:
				port->port_speed = EHEA_SPEED_10M;
				port->full_duplex = 0;
				break;
			case H_SPEED_10M_F:
				port->port_speed = EHEA_SPEED_10M;
				port->full_duplex = 1;
				break;
			case H_SPEED_100M_H:
				port->port_speed = EHEA_SPEED_100M;
				port->full_duplex = 0;
				break;
			case H_SPEED_100M_F:
				port->port_speed = EHEA_SPEED_100M;
				port->full_duplex = 1;
				break;
			case H_SPEED_1G_F:
				port->port_speed = EHEA_SPEED_1G;
				port->full_duplex = 1;
				break;
			case H_SPEED_10G_F:
				port->port_speed = EHEA_SPEED_10G;
				port->full_duplex = 1;
				break;
			default:
				port->port_speed = 0;
				port->full_duplex = 0;
				break;
			}
		} else {
			FUNC6("Failed sensing port speed\n");
			ret = -EIO;
		}
	} else {
		if (hret == H_AUTHORITY) {
			FUNC7("Hypervisor denied setting port speed\n");
			ret = -EPERM;
		} else {
			ret = -EIO;
			FUNC6("Failed setting port speed\n");
		}
	}
	if (!prop_carrier_state || (port->phy_link == EHEA_PHY_LINK_UP))
		FUNC5(port->netdev);

	FUNC2((unsigned long)cb4);
out:
	return ret;
}