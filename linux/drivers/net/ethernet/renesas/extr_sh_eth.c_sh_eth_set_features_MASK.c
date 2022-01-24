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
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {scalar_t__ rx_csum; } ;

/* Variables and functions */
 int NETIF_F_RXCSUM ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev,
			       netdev_features_t features)
{
	netdev_features_t changed = ndev->features ^ features;
	struct sh_eth_private *mdp = FUNC0(ndev);

	if (changed & NETIF_F_RXCSUM && mdp->cd->rx_csum)
		FUNC1(ndev, features & NETIF_F_RXCSUM);

	ndev->features = features;

	return 0;
}