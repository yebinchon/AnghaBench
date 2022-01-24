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
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct qcaspi {TYPE_1__ txr; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_open ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; scalar_t__ rx_pending; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TX_RING_MAX_LEN ; 
 int /*<<< orphan*/  TX_RING_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qcaspi* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  u16 ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev, struct ethtool_ringparam *ring)
{
	const struct net_device_ops *ops = dev->netdev_ops;
	struct qcaspi *qca = FUNC2(dev);

	if ((ring->rx_pending) ||
	    (ring->rx_mini_pending) ||
	    (ring->rx_jumbo_pending))
		return -EINVAL;

	if (FUNC3(dev))
		ops->ndo_stop(dev);

	qca->txr.count = FUNC0(u32, ring->tx_pending, TX_RING_MIN_LEN);
	qca->txr.count = FUNC1(u16, qca->txr.count, TX_RING_MAX_LEN);

	if (FUNC3(dev))
		ops->ndo_open(dev);

	return 0;
}