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
typedef  scalar_t__ u64 ;
struct rtnl_link_stats64 {int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_dropped; } ;
struct netvsc_vf_pcpu_stats {scalar_t__ tx_dropped; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct netvsc_stats {scalar_t__ broadcast; scalar_t__ multicast; scalar_t__ bytes; scalar_t__ packets; int /*<<< orphan*/  syncp; } ;
struct netvsc_device {int num_chn; struct netvsc_channel* chan_table; } ;
struct netvsc_channel {struct netvsc_stats rx_stats; struct netvsc_stats tx_stats; } ;
struct net_device_context {int /*<<< orphan*/  nvdev; } ;
struct net_device {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 struct net_device_context* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtnl_link_stats64*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct netvsc_vf_pcpu_stats*) ; 
 struct netvsc_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct net_device *net,
			       struct rtnl_link_stats64 *t)
{
	struct net_device_context *ndev_ctx = FUNC0(net);
	struct netvsc_device *nvdev;
	struct netvsc_vf_pcpu_stats vf_tot;
	int i;

	FUNC4();

	nvdev = FUNC3(ndev_ctx->nvdev);
	if (!nvdev)
		goto out;

	FUNC1(t, &net->stats);

	FUNC2(net, &vf_tot);
	t->rx_packets += vf_tot.rx_packets;
	t->tx_packets += vf_tot.tx_packets;
	t->rx_bytes   += vf_tot.rx_bytes;
	t->tx_bytes   += vf_tot.tx_bytes;
	t->tx_dropped += vf_tot.tx_dropped;

	for (i = 0; i < nvdev->num_chn; i++) {
		const struct netvsc_channel *nvchan = &nvdev->chan_table[i];
		const struct netvsc_stats *stats;
		u64 packets, bytes, multicast;
		unsigned int start;

		stats = &nvchan->tx_stats;
		do {
			start = FUNC6(&stats->syncp);
			packets = stats->packets;
			bytes = stats->bytes;
		} while (FUNC7(&stats->syncp, start));

		t->tx_bytes	+= bytes;
		t->tx_packets	+= packets;

		stats = &nvchan->rx_stats;
		do {
			start = FUNC6(&stats->syncp);
			packets = stats->packets;
			bytes = stats->bytes;
			multicast = stats->multicast + stats->broadcast;
		} while (FUNC7(&stats->syncp, start));

		t->rx_bytes	+= bytes;
		t->rx_packets	+= packets;
		t->multicast	+= multicast;
	}
out:
	FUNC5();
}