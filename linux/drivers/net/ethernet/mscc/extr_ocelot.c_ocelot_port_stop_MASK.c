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
struct ocelot_port {int /*<<< orphan*/  chip_port; int /*<<< orphan*/  ocelot; int /*<<< orphan*/  phy; } ;
struct net_device {int /*<<< orphan*/ * phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_MAC_ENA_CFG ; 
 int /*<<< orphan*/  QSYS_SWITCH_PORT_MODE ; 
 int /*<<< orphan*/  QSYS_SWITCH_PORT_MODE_PORT_ENA ; 
 struct ocelot_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocelot_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ocelot_port *port = FUNC0(dev);

	FUNC3(port->phy);

	dev->phydev = NULL;

	FUNC1(port, 0, DEV_MAC_ENA_CFG);
	FUNC2(port->ocelot, 0, QSYS_SWITCH_PORT_MODE_PORT_ENA,
			 QSYS_SWITCH_PORT_MODE, port->chip_port);
	return 0;
}