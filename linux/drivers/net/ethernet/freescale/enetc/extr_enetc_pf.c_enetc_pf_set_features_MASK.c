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
struct net_device {int features; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 struct enetc_ndev_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev,
				 netdev_features_t features)
{
	netdev_features_t changed = ndev->features ^ features;
	struct enetc_ndev_priv *priv = FUNC4(ndev);

	if (changed & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC0(&priv->si->hw, 0,
				    !!(features & NETIF_F_HW_VLAN_CTAG_RX));

	if (changed & NETIF_F_HW_VLAN_CTAG_TX)
		FUNC1(&priv->si->hw, 0,
				    !!(features & NETIF_F_HW_VLAN_CTAG_TX));

	if (changed & NETIF_F_LOOPBACK)
		FUNC3(ndev, !!(features & NETIF_F_LOOPBACK));

	return FUNC2(ndev, features);
}