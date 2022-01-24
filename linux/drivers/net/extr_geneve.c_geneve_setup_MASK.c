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
struct net_device {int needs_free_netdev; int features; int hw_features; int priv_flags; scalar_t__ hard_header_len; scalar_t__ max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 scalar_t__ GENEVE_BASE_HLEN ; 
 int IFF_LIVE_ADDR_CHANGE ; 
 int IFF_NO_QUEUE ; 
 int IFF_TX_SKB_SHARING ; 
 scalar_t__ IP_MAX_MTU ; 
 int NETIF_F_GSO_SOFTWARE ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  geneve_ethtool_ops ; 
 int /*<<< orphan*/  geneve_netdev_ops ; 
 int /*<<< orphan*/  geneve_type ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	FUNC2(dev);

	dev->netdev_ops = &geneve_netdev_ops;
	dev->ethtool_ops = &geneve_ethtool_ops;
	dev->needs_free_netdev = true;

	FUNC0(dev, &geneve_type);

	dev->features    |= NETIF_F_LLTX;
	dev->features    |= NETIF_F_SG | NETIF_F_HW_CSUM;
	dev->features    |= NETIF_F_RXCSUM;
	dev->features    |= NETIF_F_GSO_SOFTWARE;

	dev->hw_features |= NETIF_F_SG | NETIF_F_HW_CSUM | NETIF_F_RXCSUM;
	dev->hw_features |= NETIF_F_GSO_SOFTWARE;

	/* MTU range: 68 - (something less than 65535) */
	dev->min_mtu = ETH_MIN_MTU;
	/* The max_mtu calculation does not take account of GENEVE
	 * options, to avoid excluding potentially valid
	 * configurations. This will be further reduced by IPvX hdr size.
	 */
	dev->max_mtu = IP_MAX_MTU - GENEVE_BASE_HLEN - dev->hard_header_len;

	FUNC3(dev);
	dev->priv_flags &= ~IFF_TX_SKB_SHARING;
	dev->priv_flags |= IFF_LIVE_ADDR_CHANGE | IFF_NO_QUEUE;
	FUNC1(dev);
}