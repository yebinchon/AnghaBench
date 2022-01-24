#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  sub_channel_index; } ;
struct TYPE_6__ {TYPE_1__ offer; } ;
struct vmbus_channel {TYPE_2__ offermsg; } ;
struct sk_buff {scalar_t__ pkt_type; } ;
struct netvsc_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  multicast; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct netvsc_device {int dummy; } ;
struct TYPE_8__ {scalar_t__ pktlen; } ;
struct netvsc_channel {int /*<<< orphan*/  napi; TYPE_4__ rsc; struct netvsc_stats rx_stats; struct vmbus_channel* channel; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_no_memory; } ;
struct net_device_context {TYPE_3__ eth_stats; } ;
struct net_device {scalar_t__ reg_state; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int NVSP_STAT_FAIL ; 
 int NVSP_STAT_SUCCESS ; 
 scalar_t__ PACKET_BROADCAST ; 
 scalar_t__ PACKET_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 struct sk_buff* FUNC2 (struct net_device*,struct netvsc_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct net_device *net,
			 struct netvsc_device *net_device,
			 struct netvsc_channel *nvchan)
{
	struct net_device_context *net_device_ctx = FUNC1(net);
	struct vmbus_channel *channel = nvchan->channel;
	u16 q_idx = channel->offermsg.offer.sub_channel_index;
	struct sk_buff *skb;
	struct netvsc_stats *rx_stats;

	if (net->reg_state != NETREG_REGISTERED)
		return NVSP_STAT_FAIL;

	/* Allocate a skb - TODO direct I/O to pages? */
	skb = FUNC2(net, nvchan);

	if (FUNC6(!skb)) {
		++net_device_ctx->eth_stats.rx_no_memory;
		return NVSP_STAT_FAIL;
	}

	FUNC3(skb, q_idx);

	/*
	 * Even if injecting the packet, record the statistics
	 * on the synthetic device because modifying the VF device
	 * statistics will not work correctly.
	 */
	rx_stats = &nvchan->rx_stats;
	FUNC4(&rx_stats->syncp);
	rx_stats->packets++;
	rx_stats->bytes += nvchan->rsc.pktlen;

	if (skb->pkt_type == PACKET_BROADCAST)
		++rx_stats->broadcast;
	else if (skb->pkt_type == PACKET_MULTICAST)
		++rx_stats->multicast;
	FUNC5(&rx_stats->syncp);

	FUNC0(&nvchan->napi, skb);
	return NVSP_STAT_SUCCESS;
}