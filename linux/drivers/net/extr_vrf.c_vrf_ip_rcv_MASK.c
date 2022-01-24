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
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  mac_len; int /*<<< orphan*/  len; int /*<<< orphan*/  skb_iif; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  ptype_all; int /*<<< orphan*/  ifindex; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSKB_L3SLAVE ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int /*<<< orphan*/  NF_INET_PRE_ROUTING ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct net_device *vrf_dev,
				  struct sk_buff *skb)
{
	skb->dev = vrf_dev;
	skb->skb_iif = vrf_dev->ifindex;
	FUNC0(skb)->flags |= IPSKB_L3SLAVE;

	if (FUNC3(FUNC2(skb)->daddr))
		goto out;

	/* loopback traffic; do not push through packet taps again.
	 * Reset pkt_type for upper layers to process skb
	 */
	if (skb->pkt_type == PACKET_LOOPBACK) {
		skb->pkt_type = PACKET_HOST;
		goto out;
	}

	FUNC8(vrf_dev, skb->len);

	if (!FUNC4(&vrf_dev->ptype_all)) {
		FUNC6(skb, skb->mac_len);
		FUNC1(skb, vrf_dev);
		FUNC5(skb, skb->mac_len);
	}

	skb = FUNC7(NFPROTO_IPV4, NF_INET_PRE_ROUTING, skb, vrf_dev);
out:
	return skb;
}