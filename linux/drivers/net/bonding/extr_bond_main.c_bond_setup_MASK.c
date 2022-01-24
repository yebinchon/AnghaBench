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
struct net_device {int needs_free_netdev; int priv_flags; int features; int hw_features; int /*<<< orphan*/  flags; int /*<<< orphan*/  priv_destructor; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  max_mtu; } ;
struct bonding {struct net_device* dev; int /*<<< orphan*/  params; int /*<<< orphan*/  mode_lock; } ;

/* Variables and functions */
 int BOND_VLAN_FEATURES ; 
 int /*<<< orphan*/  ETH_MAX_MTU ; 
 int IFF_BONDING ; 
 int /*<<< orphan*/  IFF_MASTER ; 
 int IFF_NO_QUEUE ; 
 int IFF_TX_SKB_SHARING ; 
 int IFF_UNICAST_FLT ; 
 int IFF_XMIT_DST_RELEASE ; 
 int NETIF_F_GSO_ENCAP_ALL ; 
 int NETIF_F_GSO_UDP_L4 ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_HW_VLAN_STAG_TX ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_NETNS_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bond_destructor ; 
 int /*<<< orphan*/  bond_ethtool_ops ; 
 int /*<<< orphan*/  bond_netdev_ops ; 
 int /*<<< orphan*/  bond_type ; 
 int /*<<< orphan*/  bonding_defaults ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct bonding* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *bond_dev)
{
	struct bonding *bond = FUNC2(bond_dev);

	FUNC3(&bond->mode_lock);
	bond->params = bonding_defaults;

	/* Initialize pointers */
	bond->dev = bond_dev;

	/* Initialize the device entry points */
	FUNC1(bond_dev);
	bond_dev->max_mtu = ETH_MAX_MTU;
	bond_dev->netdev_ops = &bond_netdev_ops;
	bond_dev->ethtool_ops = &bond_ethtool_ops;

	bond_dev->needs_free_netdev = true;
	bond_dev->priv_destructor = bond_destructor;

	FUNC0(bond_dev, &bond_type);

	/* Initialize the device options */
	bond_dev->flags |= IFF_MASTER;
	bond_dev->priv_flags |= IFF_BONDING | IFF_UNICAST_FLT | IFF_NO_QUEUE;
	bond_dev->priv_flags &= ~(IFF_XMIT_DST_RELEASE | IFF_TX_SKB_SHARING);

	/* don't acquire bond device's netif_tx_lock when transmitting */
	bond_dev->features |= NETIF_F_LLTX;

	/* By default, we declare the bond to be fully
	 * VLAN hardware accelerated capable. Special
	 * care is taken in the various xmit functions
	 * when there are slaves that are not hw accel
	 * capable
	 */

	/* Don't allow bond devices to change network namespaces. */
	bond_dev->features |= NETIF_F_NETNS_LOCAL;

	bond_dev->hw_features = BOND_VLAN_FEATURES |
				NETIF_F_HW_VLAN_CTAG_RX |
				NETIF_F_HW_VLAN_CTAG_FILTER;

	bond_dev->hw_features |= NETIF_F_GSO_ENCAP_ALL | NETIF_F_GSO_UDP_L4;
	bond_dev->features |= bond_dev->hw_features;
	bond_dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_STAG_TX;
}