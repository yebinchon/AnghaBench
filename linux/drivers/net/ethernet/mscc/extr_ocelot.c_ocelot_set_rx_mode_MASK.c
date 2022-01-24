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
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int num_phys_ports; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_PGID_PGID ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PGID_CPU ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ocelot_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  ocelot_mc_sync ; 
 int /*<<< orphan*/  ocelot_mc_unsync ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ocelot_port *port = FUNC2(dev);
	struct ocelot *ocelot = port->ocelot;
	int i;
	u32 val;

	/* This doesn't handle promiscuous mode because the bridge core is
	 * setting IFF_PROMISC on all slave interfaces and all frames would be
	 * forwarded to the CPU port.
	 */
	val = FUNC0(ocelot->num_phys_ports - 1, 0);
	for (i = ocelot->num_phys_ports + 1; i < PGID_CPU; i++)
		FUNC3(ocelot, val, ANA_PGID_PGID, i);

	FUNC1(dev, ocelot_mc_sync, ocelot_mc_unsync);
}