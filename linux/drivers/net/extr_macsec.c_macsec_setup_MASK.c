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
struct net_device {int needs_free_netdev; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  priv_destructor; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  max_mtu; scalar_t__ min_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_MAX_MTU ; 
 int /*<<< orphan*/  IFF_NO_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  macsec_free_netdev ; 
 int /*<<< orphan*/  macsec_netdev_ops ; 
 int /*<<< orphan*/  macsec_type ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	FUNC2(dev);
	dev->min_mtu = 0;
	dev->max_mtu = ETH_MAX_MTU;
	dev->priv_flags |= IFF_NO_QUEUE;
	dev->netdev_ops = &macsec_netdev_ops;
	dev->needs_free_netdev = true;
	dev->priv_destructor = macsec_free_netdev;
	FUNC0(dev, &macsec_type);

	FUNC1(dev->broadcast);
}