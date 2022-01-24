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
struct ocelot_port {int /*<<< orphan*/  phy; int /*<<< orphan*/  phy_mode; scalar_t__ serdes; int /*<<< orphan*/  chip_port; struct ocelot* ocelot; } ;
struct ocelot {int dummy; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_PORT_PORT_CFG ; 
 int ANA_PORT_PORT_CFG_LEARNAUTO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ANA_PORT_PORT_CFG_RECV_ENA ; 
 int /*<<< orphan*/  PHY_MODE_ETHERNET ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct ocelot_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ocelot_port_adjust_link ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct ocelot_port *port = FUNC2(dev);
	struct ocelot *ocelot = port->ocelot;
	int err;

	/* Enable receiving frames on the port, and activate auto-learning of
	 * MAC addresses.
	 */
	FUNC3(ocelot, ANA_PORT_PORT_CFG_LEARNAUTO |
			 ANA_PORT_PORT_CFG_RECV_ENA |
			 FUNC0(port->chip_port),
			 ANA_PORT_PORT_CFG, port->chip_port);

	if (port->serdes) {
		err = FUNC6(port->serdes, PHY_MODE_ETHERNET,
				       port->phy_mode);
		if (err) {
			FUNC1(dev, "Could not set mode of SerDes\n");
			return err;
		}
	}

	err = FUNC5(dev, port->phy, &ocelot_port_adjust_link,
				 port->phy_mode);
	if (err) {
		FUNC1(dev, "Could not attach to PHY\n");
		return err;
	}

	dev->phydev = port->phy;

	FUNC4(port->phy);
	FUNC7(port->phy);
	return 0;
}