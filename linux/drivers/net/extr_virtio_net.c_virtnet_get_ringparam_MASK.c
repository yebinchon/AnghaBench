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
struct virtnet_info {TYPE_2__* sq; TYPE_1__* rq; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {void* tx_max_pending; void* tx_pending; void* rx_max_pending; void* rx_pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  vq; } ;
struct TYPE_3__ {int /*<<< orphan*/  vq; } ;

/* Variables and functions */
 struct virtnet_info* FUNC0 (struct net_device*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				struct ethtool_ringparam *ring)
{
	struct virtnet_info *vi = FUNC0(dev);

	ring->rx_max_pending = FUNC1(vi->rq[0].vq);
	ring->tx_max_pending = FUNC1(vi->sq[0].vq);
	ring->rx_pending = ring->rx_max_pending;
	ring->tx_pending = ring->tx_max_pending;
}