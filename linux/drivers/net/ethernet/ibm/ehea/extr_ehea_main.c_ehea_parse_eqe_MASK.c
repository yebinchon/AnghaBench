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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ehea_port {int full_duplex; int /*<<< orphan*/  phy_link; int /*<<< orphan*/  port_speed; struct net_device* netdev; } ;
struct ehea_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  EHEA_EC_ADAPTER_MALFUNC 130 
#define  EHEA_EC_PORTSTATE_CHG 129 
#define  EHEA_EC_PORT_MALFUNC 128 
 int /*<<< orphan*/  EHEA_PHY_LINK_DOWN ; 
 int /*<<< orphan*/  EHEA_PHY_LINK_UP ; 
 int /*<<< orphan*/  NEQE_EVENT_CODE ; 
 int /*<<< orphan*/  NEQE_EXTSWITCH_PORT_UP ; 
 int /*<<< orphan*/  NEQE_EXTSWITCH_PRIMARY ; 
 int /*<<< orphan*/  NEQE_PORTNUM ; 
 int /*<<< orphan*/  NEQE_PORT_UP ; 
 struct ehea_port* FUNC1 (struct ehea_adapter*,int) ; 
 int FUNC2 (struct ehea_port*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehea_port*,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  prop_carrier_state ; 

__attribute__((used)) static void FUNC11(struct ehea_adapter *adapter, u64 eqe)
{
	int ret;
	u8 ec;
	u8 portnum;
	struct ehea_port *port;
	struct net_device *dev;

	ec = FUNC0(NEQE_EVENT_CODE, eqe);
	portnum = FUNC0(NEQE_PORTNUM, eqe);
	port = FUNC1(adapter, portnum);
	if (!port) {
		FUNC3(NULL, "unknown portnum %x\n", portnum);
		return;
	}
	dev = port->netdev;

	switch (ec) {
	case EHEA_EC_PORTSTATE_CHG:	/* port state change */

		if (FUNC0(NEQE_PORT_UP, eqe)) {
			if (!FUNC6(dev)) {
				ret = FUNC2(port);
				if (ret) {
					FUNC3(dev, "failed resensing port attributes\n");
					break;
				}

				FUNC8(port, link, dev,
					   "Logical port up: %dMbps %s Duplex\n",
					   port->port_speed,
					   port->full_duplex == 1 ?
					   "Full" : "Half");

				FUNC7(dev);
				FUNC10(dev);
			}
		} else
			if (FUNC6(dev)) {
				FUNC8(port, link, dev,
					   "Logical port down\n");
				FUNC5(dev);
				FUNC9(dev);
			}

		if (FUNC0(NEQE_EXTSWITCH_PORT_UP, eqe)) {
			port->phy_link = EHEA_PHY_LINK_UP;
			FUNC8(port, link, dev,
				   "Physical port up\n");
			if (prop_carrier_state)
				FUNC7(dev);
		} else {
			port->phy_link = EHEA_PHY_LINK_DOWN;
			FUNC8(port, link, dev,
				   "Physical port down\n");
			if (prop_carrier_state)
				FUNC5(dev);
		}

		if (FUNC0(NEQE_EXTSWITCH_PRIMARY, eqe))
			FUNC4(dev,
				    "External switch port is primary port\n");
		else
			FUNC4(dev,
				    "External switch port is backup port\n");

		break;
	case EHEA_EC_ADAPTER_MALFUNC:
		FUNC3(dev, "Adapter malfunction\n");
		break;
	case EHEA_EC_PORT_MALFUNC:
		FUNC4(dev, "Port malfunction\n");
		FUNC5(dev);
		FUNC9(dev);
		break;
	default:
		FUNC3(dev, "unknown event code %x, eqe=0x%llX\n", ec, eqe);
		break;
	}
}