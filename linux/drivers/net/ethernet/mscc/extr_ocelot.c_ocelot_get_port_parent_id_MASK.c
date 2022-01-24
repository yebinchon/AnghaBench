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
struct ocelot_port {struct ocelot* ocelot; } ;
struct ocelot {int /*<<< orphan*/  base_mac; } ;
struct netdev_phys_item_id {int id_len; int /*<<< orphan*/  id; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ocelot_port* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
				     struct netdev_phys_item_id *ppid)
{
	struct ocelot_port *ocelot_port = FUNC1(dev);
	struct ocelot *ocelot = ocelot_port->ocelot;

	ppid->id_len = sizeof(ocelot->base_mac);
	FUNC0(&ppid->id, &ocelot->base_mac, ppid->id_len);

	return 0;
}