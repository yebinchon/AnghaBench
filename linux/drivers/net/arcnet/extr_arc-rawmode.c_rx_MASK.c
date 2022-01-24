#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; struct net_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* copy_from_card ) (struct net_device*,int,int,scalar_t__,int) ;} ;
struct arcnet_local {TYPE_2__ hw; } ;
struct TYPE_6__ {scalar_t__ raw; } ;
struct archdr {TYPE_3__ soft; } ;

/* Variables and functions */
 scalar_t__ ARC_HDR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_DURING ; 
 int /*<<< orphan*/  D_SKB ; 
 int /*<<< orphan*/  ETH_P_ARCNET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MTU ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sk_buff*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archdr*,struct archdr*,int) ; 
 struct arcnet_local* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int,int,scalar_t__,int) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev, int bufnum,
	       struct archdr *pkthdr, int length)
{
	struct arcnet_local *lp = FUNC6(dev);
	struct sk_buff *skb;
	struct archdr *pkt = pkthdr;
	int ofs;

	FUNC2(D_DURING, dev, "it's a raw packet (length=%d)\n", length);

	if (length > MTU)
		ofs = 512 - length;
	else
		ofs = 256 - length;

	skb = FUNC1(length + ARC_HDR_SIZE, GFP_ATOMIC);
	if (!skb) {
		dev->stats.rx_dropped++;
		return;
	}
	FUNC9(skb, length + ARC_HDR_SIZE);
	skb->dev = dev;

	pkt = (struct archdr *)skb->data;

	FUNC10(skb);
	FUNC8(skb, ARC_HDR_SIZE);

	/* up to sizeof(pkt->soft) has already been copied from the card */
	FUNC5(pkt, pkthdr, sizeof(struct archdr));
	if (length > sizeof(pkt->soft))
		lp->hw.copy_from_card(dev, bufnum, ofs + sizeof(pkt->soft),
				      pkt->soft.raw + sizeof(pkt->soft),
				      length - sizeof(pkt->soft));

	if (FUNC0(D_SKB))
		FUNC3(dev, skb, "rx");

	skb->protocol = FUNC4(ETH_P_ARCNET);
	FUNC7(skb);
}