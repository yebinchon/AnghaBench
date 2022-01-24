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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int duplex; scalar_t__ link; void* speed; } ;
struct ksz_port {int vid_member; TYPE_1__ phydev; } ;
struct ksz_device {int phy_port_cnt; int interface; int port_mask; int on_ports; int host_mask; int live_ports; int /*<<< orphan*/  dev_mutex; scalar_t__ phy_errata_9477; struct ksz_port* ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTI_PVID_REPLACE ; 
#define  PHY_INTERFACE_MODE_GMII 130 
#define  PHY_INTERFACE_MODE_MII 129 
 int PHY_INTERFACE_MODE_RGMII_ID ; 
 int PHY_INTERFACE_MODE_RGMII_RXID ; 
 int PHY_INTERFACE_MODE_RGMII_TXID ; 
#define  PHY_INTERFACE_MODE_RMII 128 
 int PORT_802_1P_PRIO_ENABLE ; 
 int PORT_BACK_PRESSURE ; 
 int PORT_BROADCAST_STORM ; 
 int PORT_DIFFSERV_PRIO_ENABLE ; 
 int PORT_FORCE_RX_FLOW_CTRL ; 
 int PORT_FORCE_TX_FLOW_CTRL ; 
 int PORT_MAC_LOOPBACK ; 
 int PORT_RGMII_ID_EG_ENABLE ; 
 int PORT_RGMII_ID_IG_ENABLE ; 
 int PORT_TAIL_TAG_ENABLE ; 
 int PORT_USER_PRIO_CEILING ; 
 int /*<<< orphan*/  P_BCAST_STORM_CTRL ; 
 int /*<<< orphan*/  P_PRIO_CTRL ; 
 int /*<<< orphan*/  REG_PORT_CTRL_0 ; 
 int /*<<< orphan*/  REG_PORT_MAC_CTRL_1 ; 
 int /*<<< orphan*/  REG_PORT_MRI_MAC_CTRL ; 
 int /*<<< orphan*/  REG_PORT_MTI_QUEUE_CTRL_0__4 ; 
 int /*<<< orphan*/  REG_PORT_PHY_INT_ENABLE ; 
 int /*<<< orphan*/  REG_PORT_XMII_CTRL_1 ; 
 void* SPEED_100 ; 
 void* SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ksz_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_device*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ksz_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ksz_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ksz_device *dev, int port, bool cpu_port)
{
	u8 data8;
	u8 member;
	u16 data16;
	struct ksz_port *p = &dev->ports[port];

	/* enable tag tail for host port */
	if (cpu_port)
		FUNC5(dev, port, REG_PORT_CTRL_0, PORT_TAIL_TAG_ENABLE,
			     true);

	FUNC5(dev, port, REG_PORT_CTRL_0, PORT_MAC_LOOPBACK, false);

	/* set back pressure */
	FUNC5(dev, port, REG_PORT_MAC_CTRL_1, PORT_BACK_PRESSURE, true);

	/* enable broadcast storm limit */
	FUNC5(dev, port, P_BCAST_STORM_CTRL, PORT_BROADCAST_STORM, true);

	/* disable DiffServ priority */
	FUNC5(dev, port, P_PRIO_CTRL, PORT_DIFFSERV_PRIO_ENABLE, false);

	/* replace priority */
	FUNC5(dev, port, REG_PORT_MRI_MAC_CTRL, PORT_USER_PRIO_CEILING,
		     false);
	FUNC2(dev, port, REG_PORT_MTI_QUEUE_CTRL_0__4,
			   MTI_PVID_REPLACE, false);

	/* enable 802.1p priority */
	FUNC5(dev, port, P_PRIO_CTRL, PORT_802_1P_PRIO_ENABLE, true);

	if (port < dev->phy_port_cnt) {
		/* do not force flow control */
		FUNC5(dev, port, REG_PORT_CTRL_0,
			     PORT_FORCE_TX_FLOW_CTRL | PORT_FORCE_RX_FLOW_CTRL,
			     false);

		if (dev->phy_errata_9477)
			FUNC1(dev, port);
	} else {
		/* force flow control */
		FUNC5(dev, port, REG_PORT_CTRL_0,
			     PORT_FORCE_TX_FLOW_CTRL | PORT_FORCE_RX_FLOW_CTRL,
			     true);

		/* configure MAC to 1G & RGMII mode */
		FUNC7(dev, port, REG_PORT_XMII_CTRL_1, &data8);
		switch (dev->interface) {
		case PHY_INTERFACE_MODE_MII:
			FUNC4(dev, 0, &data8);
			FUNC3(dev, false, &data8);
			p->phydev.speed = SPEED_100;
			break;
		case PHY_INTERFACE_MODE_RMII:
			FUNC4(dev, 1, &data8);
			FUNC3(dev, false, &data8);
			p->phydev.speed = SPEED_100;
			break;
		case PHY_INTERFACE_MODE_GMII:
			FUNC4(dev, 2, &data8);
			FUNC3(dev, true, &data8);
			p->phydev.speed = SPEED_1000;
			break;
		default:
			FUNC4(dev, 3, &data8);
			FUNC3(dev, true, &data8);
			data8 &= ~PORT_RGMII_ID_IG_ENABLE;
			data8 &= ~PORT_RGMII_ID_EG_ENABLE;
			if (dev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
			    dev->interface == PHY_INTERFACE_MODE_RGMII_RXID)
				data8 |= PORT_RGMII_ID_IG_ENABLE;
			if (dev->interface == PHY_INTERFACE_MODE_RGMII_ID ||
			    dev->interface == PHY_INTERFACE_MODE_RGMII_TXID)
				data8 |= PORT_RGMII_ID_EG_ENABLE;
			p->phydev.speed = SPEED_1000;
			break;
		}
		FUNC8(dev, port, REG_PORT_XMII_CTRL_1, data8);
		p->phydev.duplex = 1;
	}
	FUNC9(&dev->dev_mutex);
	if (cpu_port) {
		member = dev->port_mask;
		dev->on_ports = dev->host_mask;
		dev->live_ports = dev->host_mask;
	} else {
		member = dev->host_mask | p->vid_member;
		dev->on_ports |= (1 << port);

		/* Link was detected before port is enabled. */
		if (p->phydev.link)
			dev->live_ports |= (1 << port);
	}
	FUNC10(&dev->dev_mutex);
	FUNC0(dev, port, member);

	/* clear pending interrupts */
	if (port < dev->phy_port_cnt)
		FUNC6(dev, port, REG_PORT_PHY_INT_ENABLE, &data16);
}