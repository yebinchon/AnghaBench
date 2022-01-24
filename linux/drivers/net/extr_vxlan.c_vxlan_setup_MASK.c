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
struct vxlan_dev {int /*<<< orphan*/ * fdb_head; int /*<<< orphan*/ * hash_lock; int /*<<< orphan*/  gro_cells; struct net_device* dev; int /*<<< orphan*/  age_timer; int /*<<< orphan*/  next; } ;
struct net_device {int needs_free_netdev; int features; int vlan_features; int hw_features; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  priv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_MAX_MTU ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 unsigned int FDB_HASH_SIZE ; 
 int /*<<< orphan*/  IFF_NO_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NETIF_F_GSO_SOFTWARE ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_LLTX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TIMER_DEFERRABLE ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct net_device*) ; 
 struct vxlan_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vxlan_cleanup ; 
 int /*<<< orphan*/  vxlan_type ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct vxlan_dev *vxlan = FUNC6(dev);
	unsigned int h;

	FUNC3(dev);
	FUNC4(dev);

	dev->needs_free_netdev = true;
	FUNC2(dev, &vxlan_type);

	dev->features	|= NETIF_F_LLTX;
	dev->features	|= NETIF_F_SG | NETIF_F_HW_CSUM;
	dev->features   |= NETIF_F_RXCSUM;
	dev->features   |= NETIF_F_GSO_SOFTWARE;

	dev->vlan_features = dev->features;
	dev->hw_features |= NETIF_F_SG | NETIF_F_HW_CSUM | NETIF_F_RXCSUM;
	dev->hw_features |= NETIF_F_GSO_SOFTWARE;
	FUNC7(dev);
	dev->priv_flags |= IFF_NO_QUEUE;

	/* MTU range: 68 - 65535 */
	dev->min_mtu = ETH_MIN_MTU;
	dev->max_mtu = ETH_MAX_MTU;

	FUNC1(&vxlan->next);

	FUNC9(&vxlan->age_timer, vxlan_cleanup, TIMER_DEFERRABLE);

	vxlan->dev = dev;

	FUNC5(&vxlan->gro_cells, dev);

	for (h = 0; h < FDB_HASH_SIZE; ++h) {
		FUNC8(&vxlan->hash_lock[h]);
		FUNC0(&vxlan->fdb_head[h]);
	}
}