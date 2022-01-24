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
struct net_device {int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * l3mdev_ops; } ;
struct ipvl_port {int /*<<< orphan*/  pnet; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IFF_L3MDEV_RX_HANDLER ; 
 int /*<<< orphan*/  ipvl_l3mdev_ops ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ipvl_port *port)
{
	struct net_device *dev = port->dev;
	int ret;

	FUNC0();

	ret = FUNC1(FUNC2(&port->pnet));
	if (!ret) {
		dev->l3mdev_ops = &ipvl_l3mdev_ops;
		dev->priv_flags |= IFF_L3MDEV_RX_HANDLER;
	}

	return ret;
}