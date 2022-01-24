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
typedef  scalar_t__ u16 ;
struct switchdev_trans {int dummy; } ;
struct switchdev_obj_port_mdb {unsigned char* addr; scalar_t__ vid; } ;
struct ocelot_port {int /*<<< orphan*/  chip_port; scalar_t__ pvid; struct ocelot* ocelot; } ;
struct ocelot_multicast {unsigned char* addr; unsigned char ports; int /*<<< orphan*/  list; scalar_t__ vid; } ;
struct ocelot {int /*<<< orphan*/  multicast; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENTRYTYPE_MACv4 ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ocelot_multicast* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 struct ocelot_port* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocelot*,unsigned char*,scalar_t__) ; 
 int FUNC6 (struct ocelot*,int /*<<< orphan*/ ,unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ocelot_multicast* FUNC7 (struct ocelot*,unsigned char*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				   const struct switchdev_obj_port_mdb *mdb,
				   struct switchdev_trans *trans)
{
	struct ocelot_port *port = FUNC4(dev);
	struct ocelot *ocelot = port->ocelot;
	struct ocelot_multicast *mc;
	unsigned char addr[ETH_ALEN];
	u16 vid = mdb->vid;
	bool new = false;

	if (!vid)
		vid = port->pvid;

	mc = FUNC7(ocelot, mdb->addr, vid);
	if (!mc) {
		mc = FUNC1(ocelot->dev, sizeof(*mc), GFP_KERNEL);
		if (!mc)
			return -ENOMEM;

		FUNC3(mc->addr, mdb->addr, ETH_ALEN);
		mc->vid = vid;

		FUNC2(&mc->list, &ocelot->multicast);
		new = true;
	}

	FUNC3(addr, mc->addr, ETH_ALEN);
	addr[0] = 0;

	if (!new) {
		addr[2] = mc->ports << 0;
		addr[1] = mc->ports << 8;
		FUNC5(ocelot, addr, vid);
	}

	mc->ports |= FUNC0(port->chip_port);
	addr[2] = mc->ports << 0;
	addr[1] = mc->ports << 8;

	return FUNC6(ocelot, 0, addr, vid, ENTRYTYPE_MACv4);
}