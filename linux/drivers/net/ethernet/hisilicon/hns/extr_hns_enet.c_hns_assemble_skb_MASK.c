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
struct sk_buff {int len; int /*<<< orphan*/  queue_mapping; int /*<<< orphan*/ * data; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HNS_LB_TX_RING ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct net_device *ndev)
{
	struct sk_buff *skb;
	struct ethhdr *ethhdr;
	int frame_len;

	/* allocate test skb */
	skb = FUNC0(64, GFP_KERNEL);
	if (!skb)
		return NULL;

	FUNC3(skb, 64);
	skb->dev = ndev;
	FUNC2(skb->data, 0xFF, skb->len);

	/* must be tcp/ip package */
	ethhdr = (struct ethhdr *)skb->data;
	ethhdr->h_proto = FUNC1(ETH_P_IP);

	frame_len = skb->len & (~1ul);
	FUNC2(&skb->data[frame_len / 2], 0xAA,
	       frame_len / 2 - 1);

	skb->queue_mapping = HNS_LB_TX_RING;

	return skb;
}