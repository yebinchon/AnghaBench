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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct vmpacket_descriptor {scalar_t__ trans_id; } ;
struct vmbus_channel {int /*<<< orphan*/  outbound; } ;
struct sk_buff {scalar_t__ cb; } ;
struct netvsc_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct netvsc_device {int /*<<< orphan*/  tx_disable; int /*<<< orphan*/  wait_drain; int /*<<< orphan*/  destroy; TYPE_1__* chan_table; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wake_queue; } ;
struct net_device_context {TYPE_2__ eth_stats; } ;
struct net_device {int dummy; } ;
struct hv_netvsc_packet {scalar_t__ send_buf_index; size_t q_idx; scalar_t__ total_bytes; scalar_t__ total_packets; } ;
struct TYPE_3__ {int /*<<< orphan*/  queue_sends; struct netvsc_stats tx_stats; } ;

/* Variables and functions */
 scalar_t__ NETVSC_INVALID_INDEX ; 
 scalar_t__ RING_AVAIL_PERCENT_HIWATER ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 struct netdev_queue* FUNC4 (struct net_device*,size_t) ; 
 struct net_device_context* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netvsc_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct net_device *ndev,
				    struct netvsc_device *net_device,
				    struct vmbus_channel *channel,
				    const struct vmpacket_descriptor *desc,
				    int budget)
{
	struct sk_buff *skb = (struct sk_buff *)(unsigned long)desc->trans_id;
	struct net_device_context *ndev_ctx = FUNC5(ndev);
	u16 q_idx = 0;
	int queue_sends;

	/* Notify the layer above us */
	if (FUNC2(skb)) {
		const struct hv_netvsc_packet *packet
			= (struct hv_netvsc_packet *)skb->cb;
		u32 send_index = packet->send_buf_index;
		struct netvsc_stats *tx_stats;

		if (send_index != NETVSC_INVALID_INDEX)
			FUNC8(net_device, send_index);
		q_idx = packet->q_idx;

		tx_stats = &net_device->chan_table[q_idx].tx_stats;

		FUNC9(&tx_stats->syncp);
		tx_stats->packets += packet->total_packets;
		tx_stats->bytes += packet->total_bytes;
		FUNC10(&tx_stats->syncp);

		FUNC3(skb, budget);
	}

	queue_sends =
		FUNC0(&net_device->chan_table[q_idx].queue_sends);

	if (FUNC11(net_device->destroy)) {
		if (queue_sends == 0)
			FUNC12(&net_device->wait_drain);
	} else {
		struct netdev_queue *txq = FUNC4(ndev, q_idx);

		if (FUNC6(txq) && !net_device->tx_disable &&
		    (FUNC1(&channel->outbound) >
		     RING_AVAIL_PERCENT_HIWATER || queue_sends < 1)) {
			FUNC7(txq);
			ndev_ctx->eth_stats.wake_queue++;
		}
	}
}