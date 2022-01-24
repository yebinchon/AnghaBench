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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct canfd_frame {int dummy; } ;
struct can_skb_priv {int dummy; } ;
struct TYPE_2__ {scalar_t__ skbcnt; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_CANFD ; 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct net_device*,int) ; 
 struct canfd_frame* FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

struct sk_buff *FUNC9(struct net_device *dev,
				struct canfd_frame **cfd)
{
	struct sk_buff *skb;

	skb = FUNC3(dev, sizeof(struct can_skb_priv) +
			       sizeof(struct canfd_frame));
	if (FUNC8(!skb))
		return NULL;

	skb->protocol = FUNC2(ETH_P_CANFD);
	skb->pkt_type = PACKET_BROADCAST;
	skb->ip_summed = CHECKSUM_UNNECESSARY;

	FUNC5(skb);
	FUNC6(skb);
	FUNC7(skb);

	FUNC1(skb);
	FUNC0(skb)->ifindex = dev->ifindex;
	FUNC0(skb)->skbcnt = 0;

	*cfd = FUNC4(skb, sizeof(struct canfd_frame));

	return skb;
}