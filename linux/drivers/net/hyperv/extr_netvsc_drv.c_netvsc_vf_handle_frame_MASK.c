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
struct sk_buff {scalar_t__ len; struct net_device* dev; } ;
struct netvsc_vf_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device_context {int /*<<< orphan*/  vf_stats; } ;
struct net_device {int /*<<< orphan*/  rx_handler_data; } ;
typedef  int /*<<< orphan*/  rx_handler_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RX_HANDLER_ANOTHER ; 
 int /*<<< orphan*/  RX_HANDLER_CONSUMED ; 
 struct net_device_context* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct netvsc_vf_pcpu_stats* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static rx_handler_result_t FUNC7(struct sk_buff **pskb)
{
	struct sk_buff *skb = *pskb;
	struct net_device *ndev = FUNC1(skb->dev->rx_handler_data);
	struct net_device_context *ndev_ctx = FUNC0(ndev);
	struct netvsc_vf_pcpu_stats *pcpu_stats
		 = FUNC3(ndev_ctx->vf_stats);

	skb = FUNC2(skb, GFP_ATOMIC);
	if (FUNC6(!skb))
		return RX_HANDLER_CONSUMED;

	*pskb = skb;

	skb->dev = ndev;

	FUNC4(&pcpu_stats->syncp);
	pcpu_stats->rx_packets++;
	pcpu_stats->rx_bytes += skb->len;
	FUNC5(&pcpu_stats->syncp);

	return RX_HANDLER_ANOTHER;
}