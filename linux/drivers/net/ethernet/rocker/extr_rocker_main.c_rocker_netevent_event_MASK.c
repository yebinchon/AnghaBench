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
struct rocker_port {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {struct net_device* dev; int /*<<< orphan*/ * tbl; } ;

/* Variables and functions */
#define  NETEVENT_NEIGH_UPDATE 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  arp_tbl ; 
 struct rocker_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct rocker_port*,struct neighbour*) ; 

__attribute__((used)) static int FUNC4(struct notifier_block *unused,
				 unsigned long event, void *ptr)
{
	struct rocker_port *rocker_port;
	struct net_device *dev;
	struct neighbour *n = ptr;
	int err;

	switch (event) {
	case NETEVENT_NEIGH_UPDATE:
		if (n->tbl != &arp_tbl)
			return NOTIFY_DONE;
		dev = n->dev;
		if (!FUNC2(dev))
			return NOTIFY_DONE;
		rocker_port = FUNC0(dev);
		err = FUNC3(rocker_port, n);
		if (err)
			FUNC1(dev, "failed to handle neigh update (err %d)\n",
				    err);
		break;
	}

	return NOTIFY_DONE;
}