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
struct sk_buff {unsigned int len; int /*<<< orphan*/  queue_mapping; struct net_device* dev; } ;
struct netvsc_vf_pcpu_stats {unsigned int tx_bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_packets; } ;
struct net_device_context {TYPE_1__* vf_stats; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  slave_dev_queue_mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct netvsc_vf_pcpu_stats* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *net, struct net_device *vf_netdev,
			  struct sk_buff *skb)
{
	struct net_device_context *ndev_ctx = FUNC2(net);
	unsigned int len = skb->len;
	int rc;

	skb->dev = vf_netdev;
	skb->queue_mapping = FUNC3(skb)->slave_dev_queue_mapping;

	rc = FUNC0(skb);
	if (FUNC1(rc == NET_XMIT_SUCCESS || rc == NET_XMIT_CN)) {
		struct netvsc_vf_pcpu_stats *pcpu_stats
			= FUNC5(ndev_ctx->vf_stats);

		FUNC6(&pcpu_stats->syncp);
		pcpu_stats->tx_packets++;
		pcpu_stats->tx_bytes += len;
		FUNC7(&pcpu_stats->syncp);
	} else {
		FUNC4(ndev_ctx->vf_stats->tx_dropped);
	}

	return rc;
}