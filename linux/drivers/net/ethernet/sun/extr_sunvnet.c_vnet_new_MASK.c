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
typedef  int u64 ;
struct vnet {int local_mac; int /*<<< orphan*/  list; int /*<<< orphan*/ * port_hash; int /*<<< orphan*/  port_list; struct net_device* dev; int /*<<< orphan*/  lock; } ;
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int needed_tailroom; int* dev_addr; int hw_features; int features; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; scalar_t__ needed_headroom; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vnet* FUNC0 (int) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NETIF_F_ALL_TSO ; 
 int NETIF_F_GSO ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VNET_MAX_MTU ; 
 int /*<<< orphan*/  VNET_MAX_TXQS ; 
 scalar_t__ VNET_PACKET_SKIP ; 
 int VNET_PORT_HASH_SIZE ; 
 int /*<<< orphan*/  VNET_TX_TIMEOUT ; 
 struct net_device* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int*) ; 
 struct vnet* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnet_ethtool_ops ; 
 int /*<<< orphan*/  vnet_list ; 
 int /*<<< orphan*/  vnet_ops ; 

__attribute__((used)) static struct vnet *FUNC12(const u64 *local_mac,
			     struct vio_dev *vdev)
{
	struct net_device *dev;
	struct vnet *vp;
	int err, i;

	dev = FUNC4(sizeof(*vp), VNET_MAX_TXQS, 1);
	if (!dev)
		return FUNC0(-ENOMEM);
	dev->needed_headroom = VNET_PACKET_SKIP + 8;
	dev->needed_tailroom = 8;

	for (i = 0; i < ETH_ALEN; i++)
		dev->dev_addr[i] = (*local_mac >> (5 - i) * 8) & 0xff;

	vp = FUNC8(dev);

	FUNC11(&vp->lock);
	vp->dev = dev;

	FUNC2(&vp->port_list);
	for (i = 0; i < VNET_PORT_HASH_SIZE; i++)
		FUNC1(&vp->port_hash[i]);
	FUNC2(&vp->list);
	vp->local_mac = *local_mac;

	dev->netdev_ops = &vnet_ops;
	dev->ethtool_ops = &vnet_ethtool_ops;
	dev->watchdog_timeo = VNET_TX_TIMEOUT;

	dev->hw_features = NETIF_F_TSO | NETIF_F_GSO | NETIF_F_ALL_TSO |
			   NETIF_F_HW_CSUM | NETIF_F_SG;
	dev->features = dev->hw_features;

	/* MTU range: 68 - 65535 */
	dev->min_mtu = ETH_MIN_MTU;
	dev->max_mtu = VNET_MAX_MTU;

	FUNC3(dev, &vdev->dev);

	err = FUNC10(dev);
	if (err) {
		FUNC9("Cannot register net device, aborting\n");
		goto err_out_free_dev;
	}

	FUNC7(dev, "Sun LDOM vnet %pM\n", dev->dev_addr);

	FUNC6(&vp->list, &vnet_list);

	return vp;

err_out_free_dev:
	FUNC5(dev);

	return FUNC0(err);
}