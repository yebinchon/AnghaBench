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
struct net_device {int features; int /*<<< orphan*/  mtu; } ;
struct bnx2x {int /*<<< orphan*/  disable_tpa; int /*<<< orphan*/  pdev; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_GRO ; 
 int NETIF_F_GRO_HW ; 
 int NETIF_F_LOOPBACK ; 
 int NETIF_F_LRO ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

netdev_features_t FUNC3(struct net_device *dev,
				     netdev_features_t features)
{
	struct bnx2x *bp = FUNC1(dev);

	if (FUNC2(bp->pdev)) {
		netdev_features_t changed = dev->features ^ features;

		/* Revert the requested changes in features if they
		 * would require internal reload of PF in bnx2x_set_features().
		 */
		if (!(features & NETIF_F_RXCSUM) && !bp->disable_tpa) {
			features &= ~NETIF_F_RXCSUM;
			features |= dev->features & NETIF_F_RXCSUM;
		}

		if (changed & NETIF_F_LOOPBACK) {
			features &= ~NETIF_F_LOOPBACK;
			features |= dev->features & NETIF_F_LOOPBACK;
		}
	}

	/* TPA requires Rx CSUM offloading */
	if (!(features & NETIF_F_RXCSUM))
		features &= ~NETIF_F_LRO;

	if (!(features & NETIF_F_GRO) || !FUNC0(dev->mtu))
		features &= ~NETIF_F_GRO_HW;
	if (features & NETIF_F_GRO_HW)
		features &= ~NETIF_F_LRO;

	return features;
}