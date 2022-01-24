#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int autoneg; int rx_pause; int tx_pause; } ;
struct TYPE_2__ {int features; int advertising; scalar_t__ duplex; scalar_t__ asym_pause; scalar_t__ pause; } ;
struct emac_instance {int /*<<< orphan*/  link_lock; TYPE_1__ phy; } ;

/* Variables and functions */
 int ADVERTISED_Asym_Pause ; 
 int ADVERTISED_Pause ; 
 scalar_t__ DUPLEX_FULL ; 
 int SUPPORTED_Autoneg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct emac_instance* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev,
					struct ethtool_pauseparam *pp)
{
	struct emac_instance *dev = FUNC2(ndev);

	FUNC0(&dev->link_lock);
	if ((dev->phy.features & SUPPORTED_Autoneg) &&
	    (dev->phy.advertising & (ADVERTISED_Pause | ADVERTISED_Asym_Pause)))
		pp->autoneg = 1;

	if (dev->phy.duplex == DUPLEX_FULL) {
		if (dev->phy.pause)
			pp->rx_pause = pp->tx_pause = 1;
		else if (dev->phy.asym_pause)
			pp->tx_pause = 1;
	}
	FUNC1(&dev->link_lock);
}