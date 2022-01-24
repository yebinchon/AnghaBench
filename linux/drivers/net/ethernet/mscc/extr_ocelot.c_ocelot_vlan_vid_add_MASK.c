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
typedef  size_t u16 ;
struct ocelot_port {size_t pvid; size_t vid; int /*<<< orphan*/  chip_port; struct ocelot* ocelot; } ;
struct ocelot {int /*<<< orphan*/  dev; int /*<<< orphan*/ * vlan_mask; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  ENTRYTYPE_LOCKED ; 
 int /*<<< orphan*/  PGID_CPU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 struct ocelot_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocelot*,struct ocelot_port*) ; 
 int FUNC5 (struct ocelot*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, u16 vid, bool pvid,
			       bool untagged)
{
	struct ocelot_port *port = FUNC2(dev);
	struct ocelot *ocelot = port->ocelot;
	int ret;

	/* Add the port MAC address to with the right VLAN information */
	FUNC3(ocelot, PGID_CPU, dev->dev_addr, vid,
			  ENTRYTYPE_LOCKED);

	/* Make the port a member of the VLAN */
	ocelot->vlan_mask[vid] |= FUNC0(port->chip_port);
	ret = FUNC5(ocelot, vid, ocelot->vlan_mask[vid]);
	if (ret)
		return ret;

	/* Default ingress vlan classification */
	if (pvid)
		port->pvid = vid;

	/* Untagged egress vlan clasification */
	if (untagged && port->vid != vid) {
		if (port->vid) {
			FUNC1(ocelot->dev,
				"Port already has a native VLAN: %d\n",
				port->vid);
			return -EBUSY;
		}
		port->vid = vid;
	}

	FUNC4(ocelot, port);

	return 0;
}