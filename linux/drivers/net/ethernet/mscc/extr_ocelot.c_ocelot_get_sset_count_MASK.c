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
struct ocelot {int num_stats; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ETH_SS_STATS ; 
 struct ocelot_port* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, int sset)
{
	struct ocelot_port *port = FUNC0(dev);
	struct ocelot *ocelot = port->ocelot;

	if (sset != ETH_SS_STATS)
		return -EOPNOTSUPP;
	return ocelot->num_stats;
}