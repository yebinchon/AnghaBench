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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int /*<<< orphan*/  hwtstamp_config; int /*<<< orphan*/  port; TYPE_1__* mdev; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*,int,int) ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_HW_VLAN_STAG_TX ; 
 int NETIF_F_LOOPBACK ; 
 int NETIF_F_RXALL ; 
 int NETIF_F_RXFCS ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 struct mlx4_en_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
		netdev_features_t features)
{
	struct mlx4_en_priv *priv = FUNC5(netdev);
	bool reset = false;
	int ret = 0;

	if (FUNC0(netdev, features, NETIF_F_RXFCS)) {
		FUNC1(priv, "Turn %s RX-FCS\n",
			(features & NETIF_F_RXFCS) ? "ON" : "OFF");
		reset = true;
	}

	if (FUNC0(netdev, features, NETIF_F_RXALL)) {
		u8 ignore_fcs_value = (features & NETIF_F_RXALL) ? 1 : 0;

		FUNC1(priv, "Turn %s RX-ALL\n",
			ignore_fcs_value ? "ON" : "OFF");
		ret = FUNC2(priv->mdev->dev,
					      priv->port, ignore_fcs_value);
		if (ret)
			return ret;
	}

	if (FUNC0(netdev, features, NETIF_F_HW_VLAN_CTAG_RX)) {
		FUNC1(priv, "Turn %s RX vlan strip offload\n",
			(features & NETIF_F_HW_VLAN_CTAG_RX) ? "ON" : "OFF");
		reset = true;
	}

	if (FUNC0(netdev, features, NETIF_F_HW_VLAN_CTAG_TX))
		FUNC1(priv, "Turn %s TX vlan strip offload\n",
			(features & NETIF_F_HW_VLAN_CTAG_TX) ? "ON" : "OFF");

	if (FUNC0(netdev, features, NETIF_F_HW_VLAN_STAG_TX))
		FUNC1(priv, "Turn %s TX S-VLAN strip offload\n",
			(features & NETIF_F_HW_VLAN_STAG_TX) ? "ON" : "OFF");

	if (FUNC0(netdev, features, NETIF_F_LOOPBACK)) {
		FUNC1(priv, "Turn %s loopback\n",
			(features & NETIF_F_LOOPBACK) ? "ON" : "OFF");
		FUNC4(netdev, features);
	}

	if (reset) {
		ret = FUNC3(netdev, priv->hwtstamp_config,
					   features);
		if (ret)
			return ret;
	}

	return 0;
}