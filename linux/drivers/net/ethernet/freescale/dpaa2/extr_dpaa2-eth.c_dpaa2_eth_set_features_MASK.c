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
struct net_device {int features; } ;
struct dpaa2_eth_priv {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 struct dpaa2_eth_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct dpaa2_eth_priv*,int) ; 
 int FUNC2 (struct dpaa2_eth_priv*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *net_dev,
				  netdev_features_t features)
{
	struct dpaa2_eth_priv *priv = FUNC0(net_dev);
	netdev_features_t changed = features ^ net_dev->features;
	bool enable;
	int err;

	if (changed & NETIF_F_RXCSUM) {
		enable = !!(features & NETIF_F_RXCSUM);
		err = FUNC1(priv, enable);
		if (err)
			return err;
	}

	if (changed & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM)) {
		enable = !!(features & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM));
		err = FUNC2(priv, enable);
		if (err)
			return err;
	}

	return 0;
}