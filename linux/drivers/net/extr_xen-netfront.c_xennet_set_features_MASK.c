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
struct net_device {scalar_t__ mtu; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 scalar_t__ ETH_DATA_LEN ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
	netdev_features_t features)
{
	if (!(features & NETIF_F_SG) && dev->mtu > ETH_DATA_LEN) {
		FUNC0(dev, "Reducing MTU because no SG offload");
		dev->mtu = ETH_DATA_LEN;
	}

	return 0;
}