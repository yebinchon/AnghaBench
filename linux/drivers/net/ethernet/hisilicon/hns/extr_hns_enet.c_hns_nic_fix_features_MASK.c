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
struct net_device {int dummy; } ;
struct hns_nic_priv {int enet_ver; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
#define  AE_VERSION_1 128 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 struct hns_nic_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static netdev_features_t FUNC1(
		struct net_device *netdev, netdev_features_t features)
{
	struct hns_nic_priv *priv = FUNC0(netdev);

	switch (priv->enet_ver) {
	case AE_VERSION_1:
		features &= ~(NETIF_F_TSO | NETIF_F_TSO6 |
				NETIF_F_HW_VLAN_CTAG_FILTER);
		break;
	default:
		break;
	}
	return features;
}