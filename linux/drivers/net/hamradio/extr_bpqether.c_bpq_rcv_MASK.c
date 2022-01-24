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
struct sk_buff {int* data; int /*<<< orphan*/  protocol; } ;
struct packet_type {int dummy; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct ethhdr {int /*<<< orphan*/  h_source; } ;
struct bpqdev {int* acpt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ethhdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bpqdev* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 char* FUNC15 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct net_device *dev, struct packet_type *ptype, struct net_device *orig_dev)
{
	int len;
	char * ptr;
	struct ethhdr *eth;
	struct bpqdev *bpq;

	if (!FUNC6(FUNC2(dev), &init_net))
		goto drop;

	if ((skb = FUNC16(skb, GFP_ATOMIC)) == NULL)
		return NET_RX_DROP;

	if (!FUNC10(skb, sizeof(struct ethhdr)))
		goto drop;

	FUNC11();
	dev = FUNC1(dev);

	if (dev == NULL || !FUNC8(dev)) 
		goto drop_unlock;

	/*
	 * if we want to accept frames from just one ethernet device
	 * we check the source address of the sender.
	 */

	bpq = FUNC7(dev);

	eth = FUNC3(skb);

	if (!(bpq->acpt_addr[0] & 0x01) &&
	    !FUNC4(eth->h_source, bpq->acpt_addr))
		goto drop_unlock;

	if (FUNC13(skb, sizeof(struct ethhdr)))
		goto drop_unlock;

	len = skb->data[0] + skb->data[1] * 256 - 5;

	FUNC14(skb, 2);	/* Remove the length bytes */
	FUNC17(skb, len);	/* Set the length of the data */

	dev->stats.rx_packets++;
	dev->stats.rx_bytes += len;

	ptr = FUNC15(skb, 1);
	*ptr = 0;

	skb->protocol = FUNC0(skb, dev);
	FUNC9(skb);
unlock:

	FUNC12();

	return 0;
drop_unlock:
	FUNC5(skb);
	goto unlock;

drop:
	FUNC5(skb);
	return 0;
}