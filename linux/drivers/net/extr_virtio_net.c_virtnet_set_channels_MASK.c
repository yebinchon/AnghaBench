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
typedef  scalar_t__ u16 ;
struct virtnet_info {scalar_t__ max_queue_pairs; TYPE_1__* rq; } ;
struct net_device {int dummy; } ;
struct ethtool_channels {scalar_t__ combined_count; scalar_t__ other_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;
struct TYPE_2__ {scalar_t__ xdp_prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct virtnet_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct virtnet_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct virtnet_info*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				struct ethtool_channels *channels)
{
	struct virtnet_info *vi = FUNC2(dev);
	u16 queue_pairs = channels->combined_count;
	int err;

	/* We don't support separate rx/tx channels.
	 * We don't allow setting 'other' channels.
	 */
	if (channels->rx_count || channels->tx_count || channels->other_count)
		return -EINVAL;

	if (queue_pairs > vi->max_queue_pairs || queue_pairs == 0)
		return -EINVAL;

	/* For now we don't support modifying channels while XDP is loaded
	 * also when XDP is loaded all RX queues have XDP programs so we only
	 * need to check a single RX queue.
	 */
	if (vi->rq[0].xdp_prog)
		return -EINVAL;

	FUNC1();
	err = FUNC0(vi, queue_pairs);
	if (!err) {
		FUNC4(dev, queue_pairs);
		FUNC3(dev, queue_pairs);

		FUNC6(vi);
	}
	FUNC5();

	return err;
}