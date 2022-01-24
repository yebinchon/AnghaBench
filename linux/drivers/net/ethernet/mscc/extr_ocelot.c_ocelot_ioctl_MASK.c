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
struct ocelot {int /*<<< orphan*/  ptp; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCGHWTSTAMP 129 
#define  SIOCSHWTSTAMP 128 
 struct ocelot_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ocelot_port*,struct ifreq*) ; 
 int FUNC2 (struct ocelot_port*,struct ifreq*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct ocelot_port *port = FUNC0(dev);
	struct ocelot *ocelot = port->ocelot;

	/* The function is only used for PTP operations for now */
	if (!ocelot->ptp)
		return -EOPNOTSUPP;

	switch (cmd) {
	case SIOCSHWTSTAMP:
		return FUNC2(port, ifr);
	case SIOCGHWTSTAMP:
		return FUNC1(port, ifr);
	default:
		return -EOPNOTSUPP;
	}
}