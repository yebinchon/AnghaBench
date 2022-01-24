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
struct net_local {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; int /*<<< orphan*/  deferred; int /*<<< orphan*/  immediate; int /*<<< orphan*/  nibble; int /*<<< orphan*/  trigger; scalar_t__ port_owner; } ;
struct net_device {int tx_queue_len; int flags; int irq; int /*<<< orphan*/ * header_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLIP_NIBBLE_WAIT ; 
 int /*<<< orphan*/  PLIP_TRIGGER_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct net_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  plip_bh ; 
 int /*<<< orphan*/  plip_header_ops ; 
 int /*<<< orphan*/  plip_kick_bh ; 
 int /*<<< orphan*/  plip_netdev_ops ; 
 int /*<<< orphan*/  plip_timer_bh ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	struct net_local *nl = FUNC3(dev);

	/* Then, override parts of it */
	dev->tx_queue_len 	 = 10;
	dev->flags	         = IFF_POINTOPOINT|IFF_NOARP;
	FUNC2(dev->dev_addr, 0xfc, ETH_ALEN);

	dev->netdev_ops		 = &plip_netdev_ops;
	dev->header_ops          = &plip_header_ops;


	nl->port_owner = 0;

	/* Initialize constants */
	nl->trigger	= PLIP_TRIGGER_WAIT;
	nl->nibble	= PLIP_NIBBLE_WAIT;

	/* Initialize task queue structures */
	FUNC1(&nl->immediate, plip_bh);
	FUNC0(&nl->deferred, plip_kick_bh);

	if (dev->irq == -1)
		FUNC0(&nl->timer, plip_timer_bh);

	FUNC4(&nl->lock);
}