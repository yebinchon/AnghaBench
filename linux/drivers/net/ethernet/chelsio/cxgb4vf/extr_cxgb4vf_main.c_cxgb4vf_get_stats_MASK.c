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
struct t4vf_port_stats {int /*<<< orphan*/  rx_err_frames; int /*<<< orphan*/  tx_drop_frames; scalar_t__ rx_mcast_frames; scalar_t__ rx_ucast_frames; scalar_t__ rx_bcast_frames; scalar_t__ rx_ucast_bytes; scalar_t__ rx_mcast_bytes; scalar_t__ rx_bcast_bytes; scalar_t__ tx_offload_frames; scalar_t__ tx_ucast_frames; scalar_t__ tx_mcast_frames; scalar_t__ tx_bcast_frames; scalar_t__ tx_offload_bytes; scalar_t__ tx_ucast_bytes; scalar_t__ tx_mcast_bytes; scalar_t__ tx_bcast_bytes; } ;
struct port_info {int /*<<< orphan*/  pidx; struct adapter* adapter; } ;
struct net_device_stats {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; scalar_t__ multicast; scalar_t__ rx_packets; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
struct adapter {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device_stats*,int /*<<< orphan*/ ,int) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ,struct t4vf_port_stats*) ; 

__attribute__((used)) static struct net_device_stats *FUNC5(struct net_device *dev)
{
	struct t4vf_port_stats stats;
	struct port_info *pi = FUNC1(dev);
	struct adapter *adapter = pi->adapter;
	struct net_device_stats *ns = &dev->stats;
	int err;

	FUNC2(&adapter->stats_lock);
	err = FUNC4(adapter, pi->pidx, &stats);
	FUNC3(&adapter->stats_lock);

	FUNC0(ns, 0, sizeof(*ns));
	if (err)
		return ns;

	ns->tx_bytes = (stats.tx_bcast_bytes + stats.tx_mcast_bytes +
			stats.tx_ucast_bytes + stats.tx_offload_bytes);
	ns->tx_packets = (stats.tx_bcast_frames + stats.tx_mcast_frames +
			  stats.tx_ucast_frames + stats.tx_offload_frames);
	ns->rx_bytes = (stats.rx_bcast_bytes + stats.rx_mcast_bytes +
			stats.rx_ucast_bytes);
	ns->rx_packets = (stats.rx_bcast_frames + stats.rx_mcast_frames +
			  stats.rx_ucast_frames);
	ns->multicast = stats.rx_mcast_frames;
	ns->tx_errors = stats.tx_drop_frames;
	ns->rx_errors = stats.rx_err_frames;

	return ns;
}