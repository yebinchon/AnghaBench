#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct TYPE_3__ {struct device* parent; } ;
struct net_device {int features; int hw_features; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; TYPE_1__ dev; } ;
struct TYPE_4__ {int options; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; TYPE_2__ dpni_attrs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_MAX_MTU ; 
 int /*<<< orphan*/  DPAA2_ETH_MFL ; 
 int DPNI_OPT_NO_MAC_FILTER ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IFF_LIVE_ADDR_CHANGE ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  dpaa2_eth_ops ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  dpaa2_ethtool_ops ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dpaa2_eth_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC9(struct net_device *net_dev)
{
	struct device *dev = net_dev->dev.parent;
	struct dpaa2_eth_priv *priv = FUNC5(net_dev);
	u32 options = priv->dpni_attrs.options;
	u64 supported = 0, not_supported = 0;
	u8 bcast_addr[ETH_ALEN];
	u8 num_queues;
	int err;

	net_dev->netdev_ops = &dpaa2_eth_ops;
	net_dev->ethtool_ops = &dpaa2_ethtool_ops;

	err = FUNC8(priv);
	if (err)
		return err;

	/* Explicitly add the broadcast address to the MAC filtering table */
	FUNC4(bcast_addr);
	err = FUNC2(priv->mc_io, 0, priv->mc_token, bcast_addr);
	if (err) {
		FUNC0(dev, "dpni_add_mac_addr() failed\n");
		return err;
	}

	/* Set MTU upper limit; lower limit is 68B (default value) */
	net_dev->max_mtu = DPAA2_ETH_MAX_MTU;
	err = FUNC3(priv->mc_io, 0, priv->mc_token,
					DPAA2_ETH_MFL);
	if (err) {
		FUNC0(dev, "dpni_set_max_frame_length() failed\n");
		return err;
	}

	/* Set actual number of queues in the net device */
	num_queues = FUNC1(priv);
	err = FUNC7(net_dev, num_queues);
	if (err) {
		FUNC0(dev, "netif_set_real_num_tx_queues() failed\n");
		return err;
	}
	err = FUNC6(net_dev, num_queues);
	if (err) {
		FUNC0(dev, "netif_set_real_num_rx_queues() failed\n");
		return err;
	}

	/* Capabilities listing */
	supported |= IFF_LIVE_ADDR_CHANGE;

	if (options & DPNI_OPT_NO_MAC_FILTER)
		not_supported |= IFF_UNICAST_FLT;
	else
		supported |= IFF_UNICAST_FLT;

	net_dev->priv_flags |= supported;
	net_dev->priv_flags &= ~not_supported;

	/* Features */
	net_dev->features = NETIF_F_RXCSUM |
			    NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
			    NETIF_F_SG | NETIF_F_HIGHDMA |
			    NETIF_F_LLTX;
	net_dev->hw_features = net_dev->features;

	return 0;
}